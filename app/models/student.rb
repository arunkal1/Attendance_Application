class Student < ApplicationRecord
  belongs_to :group
  has_many :attendances

  COURSE_LIST = ["Devops", "SDET", "Business Analytics"]

end
