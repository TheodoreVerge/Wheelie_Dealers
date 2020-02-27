# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning db"
p "."
p ".."
p "..."
User.destroy_all

puts "Creating users"
user1 = User.create!(first_name: "Kenny", last_name: "Rogers", postcode: "N18", password: "123123", email: "test1@gmail.com")
user2 = User.create!(first_name: "Roger", last_name: "Rabbit", postcode: "SW5", password: "123123", email: "test2@gmail.com")

puts "Creating bikes"

bike1 = Bike.create!(title: "Scott Bike - Good shape", user: user1, price: 800, description: "Moutain Bike - 54 cm frame", brand: "Scott")


bike2 = Bike.create!(title: "Tandem Bike - Perfect for leisure", user: user2, price: 350, description: "Red tandem bike - signs of use visible", brand: "Schwinn")

puts "Done!"

