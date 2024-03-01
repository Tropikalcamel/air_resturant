
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
User.destroy_all

user = User.create!(email: "jhon@smith.example", password: "1234567")
# Load the JSON data from the file or URL
data = JSON.parse(File.read('db/restaurant.json'))

imagrestaurant = [  "https://imageproxy.wolt.com/venue/6049015c277cf0ebd69a61f7/cbc3ba12-077b-11ed-bc5c-722a4a08bf78_city_chicken_close_up_2.jpg",
  "https://images.unsplash.com/photo-1543992321-cefacfc2322e?q=80&w=1700&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://plus.unsplash.com/premium_photo-1687888327531-090715f28f74?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://cdn.pixabay.com/photo/2016/11/22/18/52/cake-1850011_1280.jpg",
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
    "https://images.unsplash.com/photo-1600891964599-f61ba0e24092?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1414235077428-338989a2e8c0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://plus.unsplash.com/premium_photo-1661600643912-dc6dbb1db475?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1738&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://plus.unsplash.com/premium_photo-1674106347866-8282d8c19f84?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
]

# Iterate through the results array
data['results'].each_with_index do |result, index|
  # Extract the required fields
  name = result['name']
  address = result['formatted_address']
  phone_number = result['social']['phone']
  ratings = result['rating']
  user_ratings_total = result['user_ratings_total']
  image_url = imagrestaurant[index]
  cuisine = result['cuisine']
  description = Faker::Restaurant.description
  dietaryRestrictions = result['dietaryRestrictions']
  # Create a new restaurant record
  restaurant = Restaurant.new(
    name: name,
    address: address,
    phone_number: phone_number,
    description: description,
    ratings: ratings,
    user_ratings_total: user_ratings_total,
    image: image_url,
    category: cuisine,
    dietaryRestrictions: dietaryRestrictions,
  )

  # Find or create a user record (assuming you have a User model)

  restaurant.user = user

  # Save the restaurant record
  restaurant.save!
end
