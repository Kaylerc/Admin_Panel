class Student < ApplicationRecord
  # has_one_attached :profile_photo
  has_many :cohorts, dependent: :destroy
  has_many :courses, dependent: :destroy
    # validates :first_name, :last_name, :age, :education, presence: true
    def full_name
      self.first_name + " " + self.last_name
    end

end

  # belongs_to :cohort
# through: :cohorts,
