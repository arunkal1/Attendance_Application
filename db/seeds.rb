# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Group.create(name: "Eng-16", stream: "SDET", startdate: 20/06/1990, enddate: 01/01/2001, active: true)

  Student.create(name: "Rose Lane", active: true, group_id:1, created_at:"2018-10-09", updated_at:"2018-10-09")

  Student.create(name: "Christian Dixon", active: true, group_id:1, created_at:"2018-10-09", updated_at:"2018-10-09")

  Student.create(name: "John Bates", active: true, group_id:1, created_at:"2018-10-09", updated_at:"2018-10-09")

  Student.create(name: "Gloria Roberts", active: true, group_id:1, created_at:"2018-10-09", updated_at:"2018-10-09")
