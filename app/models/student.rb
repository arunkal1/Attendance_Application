class Student < ApplicationRecord
  belongs_to :group
  has_many :attendances

  courses = []
  groups = Group.all

  groups.each do |group|
    output = "#{group.id} - #{group.name}"
    courses.push output
  end

  COURSE_LIST = courses
end
