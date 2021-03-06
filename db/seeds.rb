# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts 'creating restaurants'

 array = ["chinese", "italian", "japanese", "french", "belgian"]

50.times do
  restaurant = Restaurant.new
  restaurant.name = Faker::Name.first_name
  restaurant.address = Faker::Address.street_name
  restaurant.phone_number = Faker::PhoneNumber.cell_phone
  restaurant.category = array.sample
  restaurant.save
end

puts "#{Restaurant.count} were created"
