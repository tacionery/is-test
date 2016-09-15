class Course < ApplicationRecord
  extend EnumerateIt

  has_enumeration_for :status, with: CourseStatus

  # relations
  belongs_to :classroom, foreign_key: 'classrooms_id'

  # validations
  validates_presence_of :name
end
