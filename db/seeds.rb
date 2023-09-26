# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Comment.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "Creating users"
kyle = User.create(email: 'kyle@lewagon.com', password: '123456')
puts "Users done"

puts "Creating restaurants"
hardees = Restaurant.create(name: 'Hardees', address: '123 Main Street', user: kyle)
puts "Restaurants done"

puts "Creating comments"
first = Comment.create(user: kyle, restaurant_id: 4, content: 'It was amazing')
puts "Comments done"
