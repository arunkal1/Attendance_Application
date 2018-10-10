class Student < ApplicationRecord
  # attr_accessible :name, :attendance_attributes
  belongs_to :group
  has_many :attendances

  accepts_nested_attributes_for :attendances, allow_destroy: true


 validates :name, presence: { message: "name must be given" }

  courses = []
  groups = Group.all

  groups.each do |group|
    output = "#{group.id} - #{group.name}"
    courses.push output
  end

  COURSE_LIST = courses

end
