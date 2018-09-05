class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :password_digest
      t.string :education
      t.string :salary
      t.string :user
      t.references :cohort, foreign_key: true

      t.timestamps
    end
    add_index :instructors, :email, unique: true
  end
  end
