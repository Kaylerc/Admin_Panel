class Student < ApplicationRecord
  belongs_to :cohert
  belongs_to :courses
end
