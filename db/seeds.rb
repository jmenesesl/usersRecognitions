# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
include Faker
include Countries
# 10.times do
#   Emotion.create(
#     name:Faker::Artist.name,
#     src: Faker::Internet.domain_name ,
#     size: Faker::Number.number(6),
#     permalink: Faker::Number.hexadecimal(8),
#     updated_at: Faker::Date.between(30.days.ago, Date.today),
#     created_at: Faker::Date.between(60.days.ago, 30.days.ago)
#     )
# end

# 10.times do
#   c = ISO3166::Country.new(Faker::Address.country_code)
#   User.create(
#     name: Faker::FunnyName.name,
#     email: Faker::Internet.email,
#     country: c.alpha3,
#     phone: Faker::PhoneNumber.phone_number,
#     created_at: Faker::Date.between(80.days.ago, 90.days.ago)
#     )
# end
# a = Recognition.create(
#   id: 1,
#   name: Faker::Number.hexadecimal(6),
#   user_id: Faker::Number.between(1,999),
#   emotion_id: Faker::Number.between(1, 500),
#   updated_at: Faker::Date.between(30.days.ago, Date.today),
#   created_at: Faker::Date.between(80.days.ago, 90.days.ago)
#   )
#   puts a.inspect
10.times do
    Recognition.create(
    name: Faker::Number.hexadecimal(6),
    user_id: Faker::Number.between(1,15),
    emotion_id: Faker::Number.between(1, 15),
    device: Faker::Device.model_name,
    updated_at: Faker::Date.between(30.days.ago, Date.today),
    created_at: Faker::Date.between(80.days.ago, 90.days.ago)
    )
end
