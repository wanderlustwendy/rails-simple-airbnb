# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.delete_all

8.times do
  Flat.create(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Company.bs,
    price_per_night: Faker::Number.between(100, 300),
    number_of_guests: Faker::Number.between(2, 50)
  )
end

puts "flats created"
