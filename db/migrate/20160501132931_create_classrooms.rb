class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :students_id
      t.integer :courses_id
      t.datetime :entry_at

      t.timestamps null: false
    end
  end
end
