class Course < ApplicationRecord
  has_many :cohorts
  accepts_nested_attributes_for :cohorts

end
