
# require 'faker'


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

# ----------------------------------

# require 'json'
# Restaurant.destroy_all


# # Load JSON data from file
# file_path = Rails.root.join('db/restaurant.json')
# json_data = File.read(file_path)

# # Parse the JSON data
# data = JSON.parse(json_data)

# # Iterate over each restaurant in the JSON data
# # restaurants_data['results'].each do |restaurant_data|
# #   # Extract relevant data
# #   name = restaurant_data['name']
# #   address = restaurant_data['formatted_address']
# #   phone_number = restaurant_data['social']['phone']
# #   # Extract other relevant data as needed

# #   # Create a new restaurant record in the database
# #   Restaurant.create!(
# #     name: name,
# #     address: address,
# #     phone_number: phone_number,
# #     # Add other attributes here
# #   )
# # end

# data['results'].each do |result|
#   # Create the restaurant with basic details
#   restaurant = Restaurant.create!(
#     user: User.find_by(email: "lonnie@larkin.example"),
#     name: result['name'],
#     address: result['formatted_address'],
#     phone_number: result['social']['phone'],
#     opening_hours: result['opening_hours'],
#     ratings: result['rating'],
#     user_ratings_total: result['user_ratings_total'],
#     image_url = result['photos'][0]['links'][0]
#   )

#   # Iterate through each photo for the restaurant
#   result['photos'].each do |photo|
#     # Create a photo record for the restaurant
#     restaurant.image.create!(url: photo['links'].first) # Assuming the first link is the photo URL
#   end
# end

require 'json'
require 'open-uri'
require 'faker'
Booking.destroy_all
Restaurant.destroy_all
# Load the JSON data from the file or URL
data = JSON.parse(File.read('db/restaurant.json'))



# Iterate through the results array
data['results'].each do |result|
  # Extract the required fields
  name = result['name']
  address = result['formatted_address']
  phone_number = result['social']['phone']
  ratings = result['rating']
  user_ratings_total = result['user_ratings_total']
  image_url = result['photos'][0]['links'][1]
  cuisine = result['cuisine']
  description = Faker::Restaurant.description
  # Create a new restaurant record
  restaurant = Restaurant.new(
    name: name,
    address: address,
    phone_number: phone_number,
    description: description,
    ratings: ratings,
    user_ratings_total: user_ratings_total,
    image: image_url,
    category: cuisine
  )

  # Find or create a user record (assuming you have a User model)
  user = User.find_or_create_by(email: "lonnie@larkin.example")
  restaurant.user = user

  # Save the restaurant record
  restaurant.save!
end
