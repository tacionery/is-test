require 'rails_helper'

describe StudentsController do
  describe "POST #create" do
    context "when student is not valid" do
      it "render page with errors" do
        process :create, method: :post, params: {student: { name: '', register_number: 'ABC123', status: StudentStatus::ACTIVE }}
        expect(response).to render_template(:new)
      end
    end

    context "when student is valid" do
      it "renders user profile" do
        student = build(:active_student)
        process :create, method: :post, params: {student: { name: student.name, register_number: student.register_number, status: StudentStatus::ACTIVE }}

        expect(Student.last.name).to eq(student.name)
      end
    end
  end

  describe "PATCH #update" do
    context "when update with valid params" do
      before(:all) do
        @student = create(:active_student, register_number: 'BBB333')
      end

      it "updates a student" do
        process :update, method: :put, params: {id: @student.id, student: { name: 'Estudante Alterado', status: StudentStatus::INACTIVE }}
        updated_student = Student.find @student.id
        expect(response.status).to eql(302) # student found
        expect(updated_student.name).to eql("Estudante Alterado")
        expect(updated_student.status).to eql(StudentStatus::INACTIVE)
      end
    end
  end
end
