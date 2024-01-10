# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Kitten.destroy_all

puts 'Seeding the database'
names = %w[Blackie Bat Clone Moshi Cheesecake]

names.each do |name|
  Kitten.find_or_create_by(name:, age: rand(4), cuteness: rand(10), softness: rand(10))
end
puts "There should be #{names.length} kittens."
puts "Database contains #{Kitten.count} kittens."
