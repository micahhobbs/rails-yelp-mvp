# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: 0400452333, category: 'italian' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, Long E1 6PQ', phone_number: 0417211441, category: 'chinese' }
pizza_north = { name: 'Pizza North', address: '238 Shoreditch High St, Long E1 6PQ', phone_number: 12345, category: 'french' }
pizza_south = { name: 'Pizza South', address: '128 Shoreditch High St, Long E1 6PQ', phone_number: 54321, category: 'japanese' }
pizza_west = { name: 'Pizza West', address: '189 Shoreditch High St, Long E1 6PQ', phone_number: 0400452333, category: 'french' }

[dishoom, pizza_east, pizza_north, pizza_south, pizza_west].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished'
