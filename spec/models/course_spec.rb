require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "#create" do
    before(:all) do
      @active_course = create(:active_course)
      @inactive_course = create(:inactive_course)
    end

    it "creates active user" do
      expect(@active_course).to be_valid
      expect(@active_course.status).to eq(1)
      expect(@active_course.status).to eq(CourseStatus::ACTIVE)
    end

    it "creates inactive user" do
      expect(@inactive_course).to be_valid
      expect(@inactive_course.status).to eq(2)
      expect(@inactive_course.status).to eq(CourseStatus::INACTIVE)
    end
  end
end
