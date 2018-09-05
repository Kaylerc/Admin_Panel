class Student < ApplicationRecord
  has_one_attached :profile_photo
  has_and_belongs_to_many :coherts
    # validates :first_name, :last_name, :age, :education, presence: true
end
