class Student < ApplicationRecord
  has_many :groups
  belongs_to :attendences
end
