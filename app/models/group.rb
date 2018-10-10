class Group < ApplicationRecord

  has_many :student

  active_option = [true,false]

  validates :name, presence: { message: "name must be given" }
  validates :stream, presence: { message: "stream must be given" }
  validates :startdate, presence: { message: "start date must be given" }
  validates :enddate, presence: { message: "end date must be given" }

 ACTIVE_OPTION = active_option

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

end
