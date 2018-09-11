class CreateCohortsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_students, :id => true do |t|
      t.integer :cohort_id
      t.integer :student_id
    end
    add_index(:cohorts_students, [:cohort_id, :student_id])
  end
end
