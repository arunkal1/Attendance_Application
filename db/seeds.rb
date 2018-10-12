# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Group.create(name: 'Eng-01', stream: 'SDET', startdate: '27-08-2018', enddate: '26-10-2018', active: true)
Group.create(name: 'Eng-07', stream: 'SDET', startdate: '10-10-2017', enddate: '10-02-2018', active: false)
Group.create(name: 'Eng-09', stream: 'SDET', startdate: '23-04-2018', enddate: '12-08-2018', active: false)
Group.create(name: 'Eng-11', stream: 'SDET', startdate: '24-08-2018', enddate: '12-11-2018', active: true)
Group.create(name: 'Eng-13', stream: 'SDET', startdate: '30-09-2018', enddate: '17-12-2018', active: true)
Group.create(name: 'Eng-16', stream: 'SDET', startdate: '09-10-2018', enddate: '12-03-2019', active: true)
Group.create(name: 'BA-01', stream: 'Business', startdate: '01-07-2017', enddate: '01-10-2017', active: false)
Group.create(name: 'BA-07', stream: 'Business', startdate: '10-10-2017', enddate: '10-02-2018', active: false)
Group.create(name: 'BA-10', stream: 'Business', startdate: '23-04-2018', enddate: '12-08-2018', active: false)
Group.create(name: 'BA-16', stream: 'Business', startdate: '24-08-2018', enddate: '12-11-2018', active: true)
Group.create(name: 'BA-17', stream: 'Business', startdate: '09-10-2018', enddate: '12-03-2019', active: true)

Student.create(name: 'Robin', active: true, group_id: 1)
Student.create(name: 'Rhys', active: true, group_id: 1)
Student.create(name: 'Dan', active: true, group_id: 1)
Student.create(name: 'Tom', active: true, group_id: 1)
Student.create(name: 'Bakang', active: true, group_id: 1)
Student.create(name: 'Arun', active: true, group_id: 1)
Student.create(name: 'Michael', active: true, group_id: 1)
Student.create(name: 'Elisha', active: true, group_id: 1)
Student.create(name: 'Pinder', active: true, group_id: 1)

Student.create(name: 'Steve', active: true, group_id: 2)


aNumber = Random.new

(1..30).each do |i|
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), comment: 'Hello World', student_id: 1)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), comment: 'Hello World', student_id: 2)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), comment: 'Hello World', student_id: 3)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), comment: 'Hello World', student_id: 4)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), comment: 'Hello World', student_id: 5)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), comment: 'Hello World', student_id: 6)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), comment: 'Hello World', student_id: 7)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), comment: 'Hello World', student_id: 8)
  Attendance.create(date: i.to_s + '/01/2018', att_status: aNumber.rand(1..5), comment: 'Hello World', student_id: 9)
end
