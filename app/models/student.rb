class Student < ApplicationRecord
  belongs_to :groups
  has_many :attendences
end
