class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :instructor_id
      t.integer :student_id
      t.references :courses, foreign_key: true
      # t.belongs_to :courses
      t.timestamps
    end
  end
end
