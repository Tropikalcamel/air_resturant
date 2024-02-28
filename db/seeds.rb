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
  "https://pixabay.com/de/photos/hamburger-snack-burger-gourmet-494706/",
  "https://pixabay.com/de/photos/kuchen-schokolade-schokoladenkuchen-1850011/",
  "https://pixabay.com/de/photos/churros-dessert-s%C3%BC%C3%9Fwaren-ern%C3%A4hrung-2188871/",
  "https://pixabay.com/de/photos/pizza-kochen-fast-food-snacks-2068272/",
  "https://pixabay.com/de/photos/feige-k%C3%A4se-brot-lebensmittel-3640553/",
  "https://pixabay.com/de/photos/club-sandwich-fast-food-snack-3538455/",
  "https://pixabay.com/de/photos/hackbraten-lebensmittel-mahlzeit-3747129/",
  "https://pixabay.com/de/photos/burger-feuer-grill-grillen-kochen-1839090/",
  "https://pixabay.com/de/photos/fleischspie%C3%9F-grillen-lebensmittel-1440105/",
  "https://pixabay.com/de/photos/kebab-lebensmittel-2505237/",
  "https://pixabay.com/de/photos/reis-tomaten-gericht-lebensmittel-6364832/",
  "https://pixabay.com/de/photos/salat-lebensmittel-mahlzeit-gericht-8274421/",
  "https://pixabay.com/de/photos/tortellini-pasta-gericht-anlasser-6652191/" ,
  "https://pixabay.com/de/photos/fleisch-h%C3%A4hnchen-wei%C3%9Fes-fleisch-3027855/",
  "https://pixabay.com/de/photos/gericht-mahlzeit-lebensmittel-7279402/",
  "https://pixabay.com/de/photos/lachs-lachs-platte-mit-reis-4647406/",
  "https://pixabay.com/de/photos/schwedisch-fleischkl%C3%B6%C3%9Fchen-6053302/",
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
