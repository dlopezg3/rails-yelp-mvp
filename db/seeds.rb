# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

30.times do
  r_name = Faker::HarryPotter.location
  r_address = Faker::Address.street_name
  r_category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  r_phone = Faker::PhoneNumber.phone_number
  restaurant = Restaurant.new(name: r_name, address: r_address, category: r_category, phone_number: r_phone)
  restaurant.save
end

30.times do
  v_content = Faker::HowIMetYourMother.quote
  v_rating = (0..5).to_a.sample
  v_restaurant = (1..29).to_a.sample
  review = Review.new(content: v_content, rating: v_rating, restaurant_id: v_restaurant)
  review.save
end


