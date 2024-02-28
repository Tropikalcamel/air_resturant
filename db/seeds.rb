# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# Ensure that we have at least one user
# User.create(username: "usertest", email: 'test@example.com', encrypted_password: 'password')

# # Get all user IDs
# user_ids = User.pluck(:id)

require 'faker'

# # Create 20 users
# 20.times do
#   user = User.create(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password
#   )
# end

# # Get all user IDs
# user_ids = User.pluck(:id)

# # Create 20 restaurants
# 20.times do
#   restaurant = Restaurant.create(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.full_address,
#     phone_number: Faker::PhoneNumber.phone_number,
#     description: Faker::Lorem.paragraph,
#     vegetarian: Faker::Boolean.boolean,
#     user_id: user_ids.sample  # Assign a random user_id
#   )
# end


# Load Faker gem for generating random data
require 'faker'
Restaurant.destroy_all
# Create 20 restaurants with image URLs
20.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    description: Faker::Lorem.paragraph,
    vegetarian: Faker::Boolean.boolean,
    user_id: User.pluck(:id).sample,
    image: "https://source.unsplash.com/featured/?restaurant,food" # Example URL from Unsplash
  )
end
