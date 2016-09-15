class CreateClassrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :classrooms do |t|
      t.integer :students_id, index: true
      t.integer :courses_id, index: true

      t.datetime :entry_at
    end

    add_index :classrooms, [:students_id, :courses_id]
  end
end
