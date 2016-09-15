require 'rails_helper'

describe CoursesController do
  describe "POST #create" do
    context "when course is not valid" do
      it "render page with errors" do
        process :create, method: :post, params: {course: { name: '', description: 'Loren Ipsum...', status: CourseStatus::ACTIVE }}
        expect(response).to render_template(:new)
      end
    end

    context "when course is valid" do
      it "renders course" do
        course = build(:active_course)
        process :create, method: :post, params: {course: { name: course.name, description: course.description, status: CourseStatus::ACTIVE }}

        expect(Course.last.name).to eq(course.name)
      end
    end
  end

  describe "PATCH #update" do
    context "when update with valid params" do
      before(:all) do
        @course = create(:active_course)
      end

      it "updates a course" do
        process :update, method: :put, params: {id: @course.id, course: { name: 'Curso Alterado', description: 'Loren Alterado', status: CourseStatus::INACTIVE }}
        updated_course = Course.find @course.id
        expect(response.status).to eql(302) # course found
        expect(updated_course.name).to eql("Curso Alterado")
        expect(updated_course.status).to eql(CourseStatus::INACTIVE)
      end
    end
  end
end
