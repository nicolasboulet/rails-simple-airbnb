# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Flat.delete_all

15.times do
  Flat.create(
    name: Faker::Movies::HitchhikersGuideToTheGalaxy.location,
    address: "#{Faker::Address.street_address}, #{Faker::Address.zip_code} #{Faker::Address.state}",
    description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
    price_per_night: (20..275).to_a.sample,
    number_of_guests: (1..5).to_a.sample
  )
end
