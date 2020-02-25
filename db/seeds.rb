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
# User.destroy_all

puts "Creating users"
user = User.create!(password: "123123", email: "test1@gmail.com")

puts "Creating bikes"
bike1 = Bike.create!(title: "Fixie", user: user, price: 200, description: "Sweet fixie, blue", brand: "Peugeot")
bike2 = Bike.create!(title: "Kids", user: user, price: 50, description: "Red kids bike", brand: "Schwinn")

puts "Creating reviews"
review1 = Review.create!(user: user, bike: bike1, content: "Great bike")
review2 = Review.create!(user: user, bike: bike2, content: "Greater bike")
