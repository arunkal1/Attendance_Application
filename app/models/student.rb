class Student < ApplicationRecord
  belongs_to :groups
  has_many :attendances
end
