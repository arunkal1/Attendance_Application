class Attendance < ApplicationRecord
  # attr_accessible :att_status, :student_id
  belongs_to :student

  groups_list =[]
  courses = []
  group = Group.all


  group.each do |g|
    g.students.each do |student|
      output = "#{student.id} - #{student.name}"
      courses.push output
    end
  end

  STUDENT_LIST = courses


end
