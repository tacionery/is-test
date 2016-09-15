require 'rails_helper'

RSpec.describe Classroom, type: :model do
  describe "#create" do
    before(:all) do
      @active_student = create(:active_student, register_number: 'DDD123')
      @active_course = create(:active_course)
    end

    it "creates a classroom" do
      classroom = create(:classroom, students_id: @active_student.id, courses_id: @active_course.id)
      expect(classroom).to be_valid
      expect(classroom.student.name).to eq @active_student.name
      expect(classroom.course.name).to eq @active_course.name
    end
  end
end
