class Attendance < ApplicationRecord
  # attr_accessible :att_status, :student_id
  belongs_to :student

  validates :att_status, presence: { message: "Status Must Be Given" }

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
