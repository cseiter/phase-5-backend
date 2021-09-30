# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Device.delete_all

dev1 = Device.create!(device_type: "tablet")
dev2 = Device.create!(device_type: "laptop")
dev3 = Device.create!(device_type: "mobile cart")

Station.delete_all

station1 = Station.create!(station_name: "ICQA")
station2 = Station.create!(station_name: "Super Schutes")
station3 = Station.create!(station_name: "Inbound")

Status.delete_all

status1 = Status.create!(status_level: "In Progress")
status2 = Status.create!(status_level: "Completed")
status3 = Status.create!(status_level: "Waiting on response")

User.delete_all

user1 = User.create!(user_name: "Chris", ticket_owner:True)
user2 = User.create!(user_name: "Aiden", ticket_owner:False)
user3 = User.create!(user_name: "Holly", ticket_owner:True)

Ticket.delete_all

ticket1 = Ticket.create!(ticket_title: "bad tablet", ticket_details: "tablet will not connect to wifi", ticket_number:"001", users_id: user1, devices_id: dev1, stations_id: station2, status_id: status3)
ticket2 = Ticket.create!(ticket_title: "mobile cart missing scanner", ticket_details: "please replace scanner on mobile cart 7", ticket_number:"002",  users_id: user1, devices_id: dev3, stations_id: station1, status_id: status1)

Comment.delete_all

comment1 = Comment.create!(comment: "have you tried turning it off and on again?", tickets_id: ticket1, users_id: user1)
comment2 = Comment.create!(comment: "order placed, pending approval", tickets_id: ticket2, users_id: user1)
comment3 = Comment.create!(comment: "purchase approved", tickets_id: ticket2, users_id: user3)
comment4 = Comment.create!(comment: "do we know how long it will take for the scanner to come in?", tickets_id: ticket2, users_id: user2)

