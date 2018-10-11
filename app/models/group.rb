class Group < ApplicationRecord

  has_many :students, :dependent => :delete_all


  active_option = [true,false]


  validates :name, presence: { message: "Name Must Be Given" }
  validates :stream, presence: { message: "Stream Must Be Given" }
  validates :startdate, presence: { message: "Start Date Must Be Given" }
  validates :enddate, presence: { message: "End Date Must Be Given" }
  validates :enddate, presence: true, date: { after_or_equal_to: :startdate, message: "The End Date Given Must Be After The Start Date Given"}

 # ACTIVE_OPTION = active_option

 def self.open_conection
   conn=PG.connect( dbname: 'attendance_application_development')
 end

 def self.sort_by_name

   conn = self.open_conection

   sql = "SELECT * FROM groups ORDER BY name"

   result = conn.exec(sql)

   group = result.map do |group|
     self.hydrate group
   end

   group
end
 def self.sort_by_active

   conn = self.open_conection

   sql = "SELECT * FROM groups ORDER BY active DESC"

   result = conn.exec(sql)

   group = result.map do |group|
     self.hydrate group
   end

   group
end
 def self.sort_by_id

   conn = self.open_conection

   sql = "SELECT * FROM groups ORDER BY id"

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

def capitalize_name
  self.name.capitalize!
end

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
