# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Goat.destroy_all
User.destroy_all

user_1 = User.create(email: "goatlover@lewagonofgoats.org", password: "123456")

10.times do
  Goat.create(
    name: Faker::Movies::Avatar.character,
    user: user_1
  )
end
