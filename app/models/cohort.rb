class Cohort < ApplicationRecord
  has_one :instructor
  accepts_nested_attributes_for :instructor
  belongs_to :course, optional: true
  belongs_to :student, optional: true
end


  # has_many :students
  # has_one :instructor
  # belongs_to :courses
