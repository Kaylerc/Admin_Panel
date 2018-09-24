class Cohort < ApplicationRecord
  has_one :instructor
  accepts_nested_attributes_for :instructor
  belongs_to :course, required: false
  belongs_to :student, required: false
end


  # has_many :students
  # has_one :instructor
  # belongs_to :courses
