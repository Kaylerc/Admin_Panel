class Course < ApplicationRecord
  has_many :cohorts, dependent: :destroy
  accepts_nested_attributes_for :cohorts
  # has_many :students, through: :cohorts, dependent: :destroy

end


  # has_many :cohorts
