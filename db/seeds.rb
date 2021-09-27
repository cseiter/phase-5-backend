# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Device.delete_all

Device.create!(device_type: "tablet")
Device.create!(device_type: "laptop")
Device.create!(device_type: "mobile cart")

Station.delete_all

Station.create!(station_name: "ICQA")
Station.create!(station_name: "Super Schutes")
Station.create!(station_name: "Inbound")

Status.delete_all

Status.create!(status_level: "In Progress")
Status.create!(status_level: "Completed")
Status.create!(status_level: "Waiting on response")

