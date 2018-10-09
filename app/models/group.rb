class Group < ApplicationRecord
  belongs_to :students

  validates :name, presence: { message: "name must be given" }
  validates :type, presence: { message: "type must be given" }
  validates :startdate, presence: { message: "start date must be given" }
  validates :enddate, presence: { message: "end date must be given" }
  validates :active, presence: { message: "active must be given" } 
end
