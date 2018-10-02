class Instructor < ApplicationRecord
  # has_one_attached :profile_photo
  belongs_to :cohort, optional: true
  validates :first_name, :last_name, :age, :education, :salary, presence: true
  validates :first_name, :last_name, :age, :education, presence: true
  validates_numericality_of :age, { greater_than: 0, less_than: 150 }
  validates_numericality_of :salary, { greater_than: 1 }


  def full_name
    self.first_name + " " + self.last_name
  end
end

  # belongs_to :cohort
