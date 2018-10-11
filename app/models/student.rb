class Student < ApplicationRecord
  belongs_to :group
  has_many :attendances, :dependent => :delete_all

 validates :name, presence: { message: "must be given" }

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
