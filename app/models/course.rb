class Course < ApplicationRecord
  extend EnumerateIt

  has_enumeration_for :status, with: CourseStatus

  # relations
  has_many :classrooms

  # validations
  validates_presence_of :name
end
