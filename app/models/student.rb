class Student < ApplicationRecord
  belongs_to :groups
  has_many :attendences

  COURSE_LIST = ["Devops", "SDET", "Business Analytics"]
end
