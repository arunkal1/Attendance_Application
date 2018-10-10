class Group < ApplicationRecord

  # attr_accessible :name, :students_attributes
  has_many :students
  # accepts_nested_attributes_for :students, allow_destroy: true

  active_option = [true,false]

  validates :name, presence: { message: "name must be given" }
  validates :stream, presence: { message: "stream must be given" }
  validates :startdate, presence: { message: "start date must be given" }
  validates :enddate, presence: { message: "end date must be given" }

   ACTIVE_OPTION = active_option

   def self.open_conection
     conn=PG.connect( dbname:'attendance_application_development')
  end

  def self.find_by_name name

  conn = self.open_conection

  sql = "SELECT * FROM groups WHERE name = #{name}"

  result = conn.exec(sql)

  group = result.map do |group|
    self.hydrate group
  end
  group
  end

  def self.hydrate group_data

  group = Group.new

  group.id = group_data['id']
  group.name = group_data['name']
  group.stream = group_data['stream']
  group.startdate = group_data['startdate']
  group.enddate = group_data['enddate']
  group.active = group_data['active']

  group
  end
end
