class CreateCohortsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_students, :id => false do |t|
      t.string :cohort_id
      t.string :student_id
    end
    add_index(:cohorts_students, [:cohort_id, :student_id])
  end
end
