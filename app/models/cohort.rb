class Cohort < ApplicationRecord
  has_one :instructor, dependent: :destroy
  accepts_nested_attributes_for :instructor
  belongs_to :course, required: true, dependent: :destroy
  has_and_belongs_to_many :students, dependent: :destroy
end
