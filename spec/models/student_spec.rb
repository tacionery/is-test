require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "#create" do
    before(:all) do
      @active_student = create(:active_student)
      @inactive_student = create(:inactive_student)
    end

    it "creates active user" do
      expect(@active_student).to be_valid
      expect(@active_student.status).to eq(1)
      expect(@active_student.status).to eq(StudentStatus::ACTIVE)
    end

    it "creates inactive user" do
      expect(@inactive_student).to be_valid
      expect(@inactive_student.status).to eq(2)
      expect(@inactive_student.status).to eq(StudentStatus::INACTIVE)
    end
  end

end
