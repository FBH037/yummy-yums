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
             role: "admin")

10.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.free_email
  password = "password"
  User.create!(first_name: first_name,
              last_name: last_name,
               email: email,
               password: password,
               password_confirmation: password,
               role: "member")
end


Recipe.create!(title: "Pasta Primavera",
              description: "This dish is a light a yummy pasta dish you will love all year round!",
             instruction: "Kosher salt
             12 ounces fusilli or other corkscrew pasta
             1/2 pound sugar snap peas, halved lengthwise, or broccoli florets (or a combination)
             2 carrots, shredded
             1 yellow bell pepper, cut into thin strips
             1/4 cup extra-virgin olive oil, plus more for drizzling
             4 cloves garlic, thinly sliced
             1 pint cherry tomatoes, halved
             1/4 to 1/2 teaspoon red pepper flakes
             1/2 cup roughly chopped fresh mint
             1/2 cup grated parmesan cheese
             4 ounces goat cheese, crumbled. Bring a large pot of salted water to a boil. Add the fusilli and cook as the label directs. Add the sugar snap peas and/or broccoli, carrots and bell pepper to the boiling water during the last 2 minutes of cooking. Reserve 1/2 cup cooking water, then drain the pasta and vegetables and return to the pot.
Meanwhile, heat the olive oil in a large skillet over medium heat. Add the garlic and cook until just golden, about 30 seconds. Add the tomatoes, red pepper flakes and 1 teaspoon salt; cook until the tomatoes begin to wilt, about 2 minutes. Stir in 1/4 cup of the reserved cooking water. Pour the tomato mixture over the pasta and vegetables. Add the mint, parmesan and half the goat cheese and toss to combine. Season with salt.
Divide the pasta among bowls. Top with the remaining goat cheese and drizzle with olive oil.")

Recipe.create!(title: "Example",
             description: "McRecipe",
             instruction: "Have it Your Way")
