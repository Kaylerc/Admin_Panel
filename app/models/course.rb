class Course < ApplicationRecord
  has_many :cohorts, dependent: :destroy
  accepts_nested_attributes_for :cohorts
  # has_many :students, through: :cohorts, dependent: :destroy
  validates_numericality_of :class_hours, { greater_than: 0 }

end


  # has_many :cohorts
