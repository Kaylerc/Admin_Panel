class Cohort < ApplicationRecord
  has_one :instructor
  accepts_nested_attributes_for :instructor
  belongs_to :course, required: false
  has_and_belongs_to_many :students
end
