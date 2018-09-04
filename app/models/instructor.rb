class Instructor < ApplicationRecord
  has_one_attached :profile_photo
  # belongs_to :cohert
  # belongs_to :courses
  # validates :first_name, :last_name, :age, :education, :salary, presence: true
end
