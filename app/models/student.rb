class Student < ApplicationRecord
  belongs_to :group
  has_many :attendances

<<<<<<< HEAD
  courses = []
  groups = Group.all

  groups.each do |group|
    output = "#{group.id} - #{group.name}"
    courses.push output
  end


  COURSE_LIST = courses
=======
  COURSE_LIST = ["Devops", "SDET", "Business Analytics"]

>>>>>>> a0d6aa48058801f9c744bb26cfc463f3ea9a96c3
end
