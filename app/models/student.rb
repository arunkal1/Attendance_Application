class Student < ApplicationRecord
  # attr_accessible :name, :attendance_attributes
  belongs_to :group
  has_many :attendances
  accepts_nested_attributes_for :attendances, allow_destroy: true
end
