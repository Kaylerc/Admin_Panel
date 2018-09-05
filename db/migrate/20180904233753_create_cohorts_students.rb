class CreateCohortsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_students, :id => false do |t|
      t.integer :instructor_id
      t.integer :student_id
    end
    add_index :cohorts_students, [:instructor_id, :student_id]
  end
end
