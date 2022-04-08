# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
  Ong.create(
    user_id: User.all.sample.id,
    nome: Faker::Name.name,
    email: Faker::Internet.email,
    estado: Faker::Nation.capital_city,
    logo: Faker::LoremFlickr.image(size: "50x60")
  )
end