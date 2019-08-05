# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'lynnraey1@gmail.com', password: 'LynnRules', password_confirmation: 'LynnRules')

LynnPhoto.create!(remote_photo_url: "https://res.cloudinary.com/lynnraey/image/upload/v1564403559/yuwnja8ii54mzaeqhb8j.jpg", year: nil, city_taken: "Kathmandu", country_taken: "Nepal")
LynnPhoto.create!(remote_photo_url: "https://res.cloudinary.com/lynnraey/image/upload/v1564403559/cfkustsdunonocujmbjo.jpg", year: nil, city_taken: "Ronda", country_taken: "Spain")
LynnPhoto.create!(remote_photo_url: "https://res.cloudinary.com/lynnraey/image/upload/v1564403559/feew4lld1qk3pvqewmcd.jpg", year: nil, city_taken: "chinoezenstad", country_taken: "chinoezenland")
LynnPhoto.create!(remote_photo_url: "https://res.cloudinary.com/lynnraey/image/upload/v1564403559/zznxt1aa5wyzbkrjkleh.jpg", year: nil, city_taken: "waterdorpje", country_taken: "chinoezenland")

