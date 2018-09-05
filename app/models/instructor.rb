class Instructor < ApplicationRecord
  has_one_attached :profile_photo
  belongs_to :cohert, required: false
  # validates :first_name, :last_name, :age, :education, :salary, presence: true
end
