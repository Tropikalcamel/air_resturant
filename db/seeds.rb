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


# Create 20 restaurants with image URLs


Restaurant.destroy_all
# Sample image URLs (replace these with actual image URLs)
image_urls = [
  "https://images.unsplash.com/photo-1600891964599-f61ba0e24092?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1414235077428-338989a2e8c0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://plus.unsplash.com/premium_photo-1661600643912-dc6dbb1db475?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1738&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://plus.unsplash.com/premium_photo-1674106347866-8282d8c19f84?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1515669097368-22e68427d265?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1543992321-cefacfc2322e?q=80&w=1700&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://plus.unsplash.com/premium_photo-1687888327531-090715f28f74?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://cdn.pixabay.com/photo/2016/11/22/18/52/cake-1850011_1280.jpg" ,
  "https://cdn.pixabay.com/photo/2017/03/30/15/47/churros-2188871_1280.jpg",
  "https://cdn.pixabay.com/photo/2017/02/15/10/57/pizza-2068272_1280.jpg",
  "https://cdn.pixabay.com/photo/2018/08/29/19/01/fig-3640553_1280.jpg",
  "https://cdn.pixabay.com/photo/2018/07/14/21/30/club-sandwich-3538455_1280.jpg",
  "https://cdn.pixabay.com/photo/2018/10/14/18/29/meatloaf-3747129_1280.jpg",
  "https://cdn.pixabay.com/photo/2016/11/19/12/44/burgers-1839090_1280.jpg",
  "https://cdn.pixabay.com/photo/2016/06/06/18/29/meat-skewer-1440105_1280.jpg",
  "https://cdn.pixabay.com/photo/2017/07/14/23/25/kebab-2505237_1280.jpg",
  "https://cdn.pixabay.com/photo/2021/06/25/22/33/rice-6364832_1280.jpg",
  "https://cdn.pixabay.com/photo/2021/02/26/21/57/swedish-6053302_1280.jpg",
  "https://cdn.pixabay.com/photo/2016/11/19/12/44/burgers-1839090_1280.jpg",
]

# Create 20 restaurants with different image URLs
25.times do |i|

  
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    description: Faker::Lorem.paragraph,
    vegetarian: Faker::Boolean.boolean,
    user_id: User.pluck(:id).sample,

    image: image_urls[i % image_urls.length] # Use different image URL for each restaurant
  )
end

# 5.times do
#   Restaurant.create!(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.full_address,
#     phone_number: Faker::PhoneNumber.phone_number,
#     description: Faker::Lorem.paragraph,
#     vegetarian: Faker::Boolean.boolean,
#     user_id: User.pluck(:id).sample,
#     image: image_urls[i % image_urls.length] # Use different image URL for each restaurant
#   )
# end

