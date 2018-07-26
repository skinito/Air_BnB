# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
  city = City.create(name: Faker::GameOfThrones.city)
end
20.times do
  dogsitter = Dogsitter.create(name: Faker::GameOfThrones.character, city_id: rand(1..10))
end
45.times do
  dog = Dog.create(name: Faker::Dog.name, city_id: rand(1..10))
end
15.times do
  stroll = Stroll.create(city_id: rand(1..10), dogsitter_id: rand(1..20), dog_id: rand(1..45))
end
