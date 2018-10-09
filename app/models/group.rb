class Group < ApplicationRecord
  
  has_many :student
  
  active_option = [true,false]

  validates :name, presence: { message: "name must be given" }
  validates :stream, presence: { message: "stream must be given" }
  validates :startdate, presence: { message: "start date must be given" }
  validates :enddate, presence: { message: "end date must be given" }
  
   ACTIVE_OPTION = active_option
end
