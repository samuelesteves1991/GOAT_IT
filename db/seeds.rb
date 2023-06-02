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
  name: "Rammnstein",
  age: "12",
  milk: true,
  horn_massage: true,
  foot_massage: false,
  whool: true,
  pet_friendly: true,
  user: user_1,
)

file = URI.open("https://cloudfront-us-east-2.images.arcpublishing.com/reuters/FEDRAWFZHJOEDMVVBBU3C6EGGQ.jpg")
goat_1.photo.attach(io: file, filename: "goat_1.jpeg", content_type: "image/jpeg")
goat_1.save

goat_2 = Goat.new(
  name: "Donald",
  age: "3",
  milk: true,
  horn_massage: true,
  foot_massage: false,
  whool: false,
  pet_friendly: true,
  user: user_4,
)

file = URI.open("https://media.istockphoto.com/id/177369626/photo/funny-goat-puts-out-its-tongue.jpg?s=612x612&w=0&k=20&c=YlmA4-C8o5XFsoYMLK-VBnhQku1tmeBm7DJBkrzJuGw=")
goat_2.photo.attach(io: file, filename: "goat_1.jpeg", content_type: "image/jpeg")
goat_2.save

goat_3 = Goat.new(
  name: "Schumacher",
  age: "8",
  milk: false,
  horn_massage: true,
  foot_massage: true,
  whool: true,
  pet_friendly: false,
  user: user_2,
)

file = URI.open("https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1240/MTk3MTM2NTIxNzY0MDIxNTY3/15-best-pet-goat-breeds-for-pets.webp")
goat_3.photo.attach(io: file, filename: "goat_1.jpeg", content_type: "image/jpeg")
goat_3.save

goat_4 = Goat.new(
  name: "Ronaldo",
  age: "9",
  milk: true,
  horn_massage: true,
  foot_massage: true,
  whool: true,
  pet_friendly: true,
  user: user_3,
)

file = URI.open("https://i.ytimg.com/vi/nlYlNF30bVg/hqdefault.jpg")
goat_4.photo.attach(io: file, filename: "goat_1.jpeg", content_type: "image/jpeg")
goat_4.save

goat_5 = Goat.new(
  name: "Maron5",
  age: "2",
  milk: false,
  horn_massage: false,
  foot_massage: false,
  whool: false,
  pet_friendly: true,
  user: user_5,
)

file = URI.open("https://www.rd.com/wp-content/uploads/2021/03/GettyImages-1199243328.jpg")
goat_5.photo.attach(io: file, filename: "goat_1.jpeg", content_type: "image/jpeg")
goat_5.save

goat_6 = Goat.new(
  name: "Putin",
  age: "5",
  milk: false,
  horn_massage: false,
  foot_massage: false,
  whool: true,
  pet_friendly: false,
  user: user_2,
)

file = URI.open("https://t4.ftcdn.net/jpg/02/39/06/15/360_F_239061549_UwEXi7WgJNgAihnUafbBVCfjmIInJ5yd.jpg")
goat_6.photo.attach(io: file, filename: "goat_1.jpeg", content_type: "image/jpeg")
goat_6.save

goat_7 = Goat.new(
  name: "Clinton",
  age: "7",
  milk: true,
  horn_massage: false,
  foot_massage: false,
  whool: false,
  pet_friendly: true,
  user: user_1,
)

file = URI.open("https://ichef.bbci.co.uk/images/ic/1920x1080/p0bxb1mx.jpg")
goat_7.photo.attach(io: file, filename: "goat_1.jpeg", content_type: "image/jpeg")
goat_7.save

goat_8 = Goat.new(
  name: "Brad Pitt",
  age: "2",
  milk: false,
  horn_massage: false,
  foot_massage: false,
  whool: false,
  pet_friendly: true,
  user: user_3,
)

file = URI.open("https://petkeen.com/wp-content/uploads/2021/11/white-goat-in-the-meadow.jpeg")
goat_8.photo.attach(io: file, filename: "goat_1.jpeg", content_type: "image/jpeg")
goat_8.save

goat_9 = Goat.new(
  name: "Messi",
  age: "6",
  milk: false,
  horn_massage: false,
  foot_massage: false,
  whool: false,
  pet_friendly: true,
  user: user_5,
)

file = URI.open("https://pbs.twimg.com/media/FjFBaiQXEAIj-ju.jpg:large")
goat_9.photo.attach(io: file, filename: "goat_1.jpeg", content_type: "image/jpeg")
goat_9.save

goat_10 = Goat.new(
  name: "Miguel The King",
  age: "6",
  milk: false,
  horn_massage: false,
  foot_massage: false,
  whool: false,
  pet_friendly: true,
  user: user_5,
)

file = URI.open("https://media.cnn.com/api/v1/images/stellar/prod/230102104629-goat-banned-words.jpg?c=16x9&q=h_720,w_1280,c_fill")
goat_10.photo.attach(io: file, filename: "goat_1.jpeg", content_type: "image/jpeg")
goat_10.save
