class Group < ApplicationRecord

  has_many :students


  validates :name, presence: { message: "name must be given" }
  validates :stream, presence: { message: "stream must be given" }
  validates :startdate, presence: { message: "start date must be given" }
  validates :enddate, presence: { message: "end date must be given" }

end
