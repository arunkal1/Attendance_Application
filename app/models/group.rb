class Group < ApplicationRecord

  has_many :students, :dependent => :delete_all

  #Setting up data validation so no fields can be left blank and ensures that
  #the end date comes after the start date.
  validates :name, presence: { message: "Name Must Be Given" }
  validates :stream, presence: { message: "Stream Must Be Given" }
  validates :startdate, presence: { message: "Start Date Must Be Given" }
  validates :enddate, presence: { message: "End Date Must Be Given" }
  validates :enddate, date: { after_or_equal_to: :startdate, message: "The End Date Given Must Be After The Start Date Given"}

  #Method that sets up connection to the database
  def self.open_conection
    conn=PG.connect( dbname: 'attendance_application_development')
  end

  #Selects groups from the database and orders them by name
  def self.sort_by_name
    conn = self.open_conection

    sql = "SELECT * FROM groups ORDER BY name"
    result = conn.exec(sql)

    group = result.map do |group|
      self.hydrate group
    end

    group
  end

  #Selects groups from the database and orders them by active groups
  def self.sort_by_active
    conn = self.open_conection

    sql = "SELECT * FROM groups ORDER BY active DESC"
    result = conn.exec(sql)

    group = result.map do |group|
      self.hydrate group
    end

    group
  end

  #Selects groups from the database and orders them by ID
  def self.sort_by_id
    conn = self.open_conection

    sql = "SELECT * FROM groups ORDER BY id"
    result = conn.exec(sql)

    group = result.map do |group|
      self.hydrate group
   end

    group
  end

  #Converts the data from postgresql into usable information
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
