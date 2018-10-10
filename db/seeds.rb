# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Group.create(name: 'Ted', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Eng16', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Eng16', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Bill', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: false)
Group.create(name: 'Eng1', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: false)
Group.create(name: 'Eng17', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Aimee', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: false)
Group.create(name: 'Eng197', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Michael', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Eng16', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: false)
Group.create(name: 'Zack', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)

Student.create(name: 'Robin', active: true, group_id: 1)
Student.create(name: 'Rhys', active: true, group_id: 1)
Student.create(name: 'Dan', active: true, group_id: 1)
Student.create(name: 'Tom', active: true, group_id: 1)
Student.create(name: 'Arun', active: true, group_id: 1)


aNumber = Random.new

(1..30).each do |i|
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), student_id: 1)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), student_id: 2)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), student_id: 3)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), student_id: 4)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), student_id: 5)
end
