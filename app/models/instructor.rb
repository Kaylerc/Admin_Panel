class Instructor < ApplicationRecord
  # has_one_attached :profile_photo
  belongs_to :cohort, optional: true
  validates :first_name, :last_name, :age, :education, :salary, presence: true
  def full_name
    self.first_name + " " + self.last_name
  end
end

  # belongs_to :cohort
