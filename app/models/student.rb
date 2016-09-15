class Student < ApplicationRecord
  extend EnumerateIt

  has_enumeration_for :status, with: StudentStatus

  # relations
  belongs_to :classroom, foreign_key: 'students_id'

  # validations
  validates_uniqueness_of :register_number
  validates_presence_of :name, :register_number, :status
end
