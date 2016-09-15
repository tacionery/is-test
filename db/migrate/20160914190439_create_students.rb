class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name, limit: 45, required: true
      t.string :register_number, limit: 45, required: true, unique: true, index: true
      t.integer :status, index: true

      t.timestamps
    end
  end
end
