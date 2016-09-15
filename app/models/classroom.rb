class Classroom < ApplicationRecord

  # hooks
  before_create :set_entry_at

  # relations
  belongs_to :student, foreign_key: 'students_id'
  belongs_to :course, foreign_key: 'courses_id'

  # validations
  validates_uniqueness_of :students_id, scope: :courses_id

  def set_entry_at
    self.entry_at = DateTime.now.in_time_zone
  end

end
