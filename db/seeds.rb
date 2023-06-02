# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Goat.destroy_all
User.destroy_all

#user_1 = User.create(email: "goatlover@lewagonofgoats.org", password: "123456")

#10.times do
  #Goat.create(
    #name: Faker::Movies::Avatar.character,
    #user: user_1
  #)
#end

user_1 = User.create!(
  email: "goatlover@lewagonofgoats.org",
  password: "123456",
  first_name: "Malcolm",
  last_name: "The Rich"
)
user_2 = User.create(
  email: "miketheanimal@lewagonofgoats.org",
  password: "123456",
  first_name: "Mike",
  last_name: "Animal"
)
user_3 = User.create(
  email: "stevenspielberg@lewagonofgoats.org",
  password: "123456",
  first_name: "Steven",
  last_name: "Spielberg"
)
user_4 = User.create(
  email: "johnlenon@lewagonofgoats.org",
  password: "123456",
  first_name: "John",
  last_name: "Lenon"
)
user_5 = User.create(
  email: "chaliebrown@lewagonofgoats.org",
  password: "123456",
  first_name: "Charlie",
  last_name: "Brown"
)


goat_1 = Goat.new(
  name: "Messi",
  age: "12",
  milk: true,
  horn_massage: true,
  foot_massage: false,
  whool: true,
  pet_friendly: true,
  user: user_1,
)

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/ff/Domestic_goat_kid_in_capeweed.jpg")
goat_1.photo.attach(io: file, filename: "goat_1.jpeg", content_type: "image/jpeg")
goat_1.save

goat_2 = Goat.create!(
  name: "Donald",
  age: "3",
  milk: true,
  horn_massage: true,
  foot_massage: false,
  whool: false,
  pet_friendly: true,
  user: user_4,
)
goat_3 = Goat.create!(
  name: "Schumacher",
  age: "8",
  milk: false,
  horn_massage: true,
  foot_massage: true,
  whool: true,
  pet_friendly: false,
  user: user_2,
)
goat_4 = Goat.create(
  name: "Ronaldo",
  age: "9",
  milk: true,
  horn_massage: true,
  foot_massage: true,
  whool: true,
  pet_friendly: true,
  user: user_3,
)

goat_5 = Goat.create(
  name: "Maron5",
  age: "2",
  milk: false,
  horn_massage: false,
  foot_massage: false,
  whool: false,
  pet_friendly: true,
  user: user_5,
)
goat_6 = Goat.create(
  name: "Putin",
  age: "5",
  milk: false,
  horn_massage: false,
  foot_massage: false,
  whool: true,
  pet_friendly: false,
  user: user_2,
)
goat_7 = Goat.create(
  name: "Clinton",
  age: "7",
  milk: true,
  horn_massage: false,
  foot_massage: false,
  whool: false,
  pet_friendly: true,
  user: user_1,
)
goat_8 = Goat.create(
  name: "Brad Pitt",
  age: "2",
  milk: false,
  horn_massage: false,
  foot_massage: false,
  whool: false,
  pet_friendly: true,
  user: user_3,
)
goat_9 = Goat.create(
  name: "Rammnstein",
  age: "6",
  milk: false,
  horn_massage: false,
  foot_massage: false,
  whool: false,
  pet_friendly: true,
  user: user_5,
)
goat_10 = Goat.create(
  name: "Pure Evil",
  age: "3",
  milk: true,
  horn_massage: true,
  foot_massage: true,
  whool: true,
  pet_friendly: false,
  user: user_4,
)
puts 'Seed: Finished seeding!'
