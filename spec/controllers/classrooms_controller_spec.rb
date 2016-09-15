require 'rails_helper'

describe ClassroomsController do
  describe "POST #create" do
    before(:all) do
      @student = create(:active_student, register_number: 'CCC123')
      @course = create(:active_course)
    end

    context "when classroom is valid" do
      it "creates the classroom" do
        process :create, method: :post, params: {classroom: { students_id: @student.id, courses_id: @course.id }}
        expect(Classroom.count).to eq(1)
      end
    end
  end
end
