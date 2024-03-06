# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

restaurants = [
  { name: 'The Golden Dragon', category: 'chinese', address: '123 Main Street', phone_number: "00000000000" },
  { name: 'La Pizzeria Bella', category: 'italian', address: '456 Elm Street', phone_number: "00000000000" },
  { name: 'Tokyo Sushi Bar', category: 'japanese', address: '789 Oak Street',  phone_number: "00000000000"},
  { name: 'Le Petit Bistro', category: 'french', address: '101 Maple Avenue', phone_number: "00000000000" },
  { name: 'Belgian Waffle House', category: 'belgian', address: '222 Pine Street', phone_number: "00000000000"}
]

# Create restaurant records
restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts 'Created restaurants'
