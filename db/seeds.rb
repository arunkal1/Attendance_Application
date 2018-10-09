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
Group.create(name: 'bill', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Eng1', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Eng17', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Aimee', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Eng197', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Michael', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Eng16', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)
Group.create(name: 'Zack', stream: 'Technical', startdate: '09-10-2018', enddate: '25-03-2019', active: true)

Student.create(name: 'Robin', active: true, group_id: 1)
Student.create(name: 'Rhys', active: true, group_id: 1)
Student.create(name: 'Dan', active: true, group_id: 1)
Student.create(name: 'Tom', active: true, group_id: 1)
Student.create(name: 'Arun', active: true, group_id: 1)
Student.create(name: 'Michael', active: true, group_id: 1)
Student.create(name: 'Elisha', active: true, group_id: 1)
Student.create(name: 'Pinda', active: true, group_id: 1)


Attendance.create(date: '01/01/2018', att_status: 1, student_id: 1)
Attendance.create(date: '01/01/2018', att_status: 2, student_id: 2)
Attendance.create(date: '01/01/2018', att_status: 3, student_id: 3)
Attendance.create(date: '01/01/2018', att_status: 4, student_id: 4)
Attendance.create(date: '01/01/2018', att_status: 5, student_id: 5)
Attendance.create(date: '01/01/2018', att_status: 1, student_id: 6)
Attendance.create(date: '01/01/2018', att_status: 2, student_id: 7)
Attendance.create(date: '01/01/2018', att_status: 3, student_id: 8)
