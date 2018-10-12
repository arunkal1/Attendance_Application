class Student < ApplicationRecord
  # attr_accessible :name, :attendance_attributes
  belongs_to :group
  has_many :attendances, :dependent => :delete_all

accepts_nested_attributes_for :attendances, allow_destroy: true


 validates :name, presence: { message: "Must Be Given" }

  # Function used by students controller will return a list of courses. This is passed to the students form.
  def self.course_list_assign
    courses = []
    groups = Group.all

    groups.each do |group|
      output = "#{group.id} - #{group.name}"
      courses.push output
    end

    course_list = courses.reverse
  end
end
