class Course < ApplicationRecord
  has_many :cohorts
  accepts_nested_attributes_for :cohorts
  has_many :students, through: :cohorts

end


  # has_many :cohorts
