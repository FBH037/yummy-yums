# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(first_name: "Example",
              last_name: "McExampleton",
             email: "example@yummy-yums.com",
             password: "my_pass",
             password_confirmation: "my_pass",
             admin: true)

10.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.free_email
  password = "password"
  User.create!(first_name: first_name,
              last_name: last_name,
               email: email,
               password: password,
               password_confirmation: password)
end


Recipe.create!(title: "Example",
              description: "McRecipe",
             instruction: "Have it Your Way")

10.times do |n|
  title = Faker::Lorem.sentence(1)
  description = Faker::Lorem.sentence(2)
  instruction = Faker::Lorem.sentence(4)
  Recipe.create!(title: title,
              description: description,
               instruction: instruction)
end
