class Attendance < ApplicationRecord
  # attr_accessible :att_status, :student_id
  belongs_to :student
end
