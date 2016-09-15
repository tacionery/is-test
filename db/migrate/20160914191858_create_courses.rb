class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name, limit: 45, unique: true, index: true, required: true
      t.string :description, limit: 45
      t.integer :status, index: true

      t.timestamps
    end
  end
end
