class Classroom < ApplicationRecord

  # hooks
  before_create :set_entry_date

  # relations
  has_many :students, foreign_key: 'students_id'
  has_many :courses, foreign_key: 'courses_id'

  def set_entry_date
    self.entry_date = DateTime.now.in_time_zone
  end

end
