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

Recipe.create!(title: "Chef John's Stuffed Peppers",
             description: "This recipe's roots can be traced back to the Great Depression, when farmers first began selling the unripe peppers out of necessity. Of course, we did what Americans always do when faced with a new variety of food, we stuffed meat in it.",
             instruction: "Preheat the oven to 375 degrees F (190 degrees C).
             Bring rice and water to a boil in a saucepan over high heat. Reduce heat to medium-low, cover, and simmer until the rice is tender, and the liquid has been absorbed, 20 to 25 minutes. Set the cooked rice aside.
             Cook onion and olive oil over medium heat until onion begins to soften, about 5 minutes. Transfer half of cooked onion to a large bowl and set aside.
             Stir tomato sauce, beef broth, balsamic vinegar, and red pepper flakes into the skillet; cook and stir for 1 minute.
             Pour tomato sauce mixture into a 9x13-inch baking dish and set aside.
             Combine ground beef, Italian sausage, diced tomatoes, Italian parsley, garlic, salt, black pepper, and cayenne pepper into bowl with reserved onions; mix well. Stir in cooked rice and Parmigiano Reggiano. Stuff green bell peppers with beef and sausage mixture.
             Place stuffed green bell pepper halves in the baking dish over tomato sauce; sprinkle with remaining Parmigiano-Reggiano, cover baking dish with aluminum foil, and bake in the preheated oven for 45 minutes.
             Remove aluminum foil and bake until the meat is no longer pink, the green peppers are tender and the cheese is browned on top, an addition 20 to 25 minutes.")

             Recipe.create!(title: "Mini Cheesecakes III",
             description: "This is a delicious recipe that is perfect for an on-the-go snack. Plus it is a great treat for kids.",
             instruction: "Preheat oven to 325 degrees F (165 degrees C). Grease a 6-cup muffin pan.
             In a medium bowl, mix together the graham cracker crumbs, sugar, and margarine with a fork until combined. Measure a rounded tablespoon of the mixture into the bottom of each muffin cup, pressing firmly. Bake in the pre-heated oven for 5 minutes, then remove to cool. Keep the oven on.
             Beat together the cream cheese, sugar, lemon juice, lemon zest and vanilla until fluffy. Mix in the egg.
             Pour the cream cheese mixture into the muffin cups, filling each until 3/4 full. Bake at 325 degrees F (165 degrees C) for 25 minutes. Cool completely in pan before removing. Refrigerate until ready to serve.")

             Recipe.create!(title: "Best Chocolate Chip Cookies",
             description: "Crisp edges, chewy middles.",
             instruction: "Preheat oven to 350 degrees F (175 degrees C).
             Cream together the butter, white sugar, and brown sugar until smooth. Beat in the eggs one at a time, then stir in the vanilla. Dissolve baking soda in hot water. Add to batter along with salt. Stir in flour, chocolate chips, and nuts. Drop by large spoonfuls onto ungreased pans.
             Bake for about 10 minutes in the preheated oven, or until edges are nicely browned.")

             Recipe.create!(title: "Easy Rumaki with Pineapple",
             description: "This combines the crunchiness of bacon and water chestnuts with the wonderful flavors of pineapple. We make it right before watching football games, but it doesn't last long.",
             instruction: "Preheat oven to 375 degrees F (190 degrees C). Line the bottom section of a broiler pan with aluminum foil, top with the broiler rack, and spray rack with cooking spray.
             Place a water chestnut slice atop each pineapple cube; wrap each with 1 bacon slice, securing with a toothpick. Arrange wrapped pineapple on the prepared broiler rack.
             Bake in the preheated oven for 7 minutes; turn and continue baking until bacon is almost crisp, about 8 more minutes. Brush rumaki with sesame-ginger dressing and continue baking until bacon is crisp, about 5 more minutes. Garnish rumaki with green onion.")

             Recipe.create!(title: "Baked Buffalo Chicken Dip",
             description: "You can't keep showing up at these Super Bowl parties with a bag of chips every year. So, if you're ready to go from snack scrub to appetizer all-star, then give this great baked dip a try.",
             instruction: "Preheat oven to 400 degrees F (200 degrees C).
             Combine chicken, cream cheese, hot pepper sauce, 1/2 cup pepper Jack cheese, blue cheese dressing, crumbled blue cheese, seafood seasoning, and cayenne pepper in a large bowl.
             Transfer chicken mixture to a 9-inch round baking dish and sprinkle with 2 tablespoons pepper Jack cheese.
             Bake until lightly browned, 15 to 20 minutes. Remove from oven and garnish with cayenne pepper.")

             Recipe.create!(title: "Homemade Chicken Enchiladas",
             description: "These enchiladas are great.",
             instruction: "Preheat oven to 350 degrees F (175 degrees C).
             Heat olive oil in a skillet over medium heat. Cook and stir chicken, onion, green bell pepper, garlic, cream cheese, and 1 cup Monterey Jack cheese in hot oil until the cheese melts, about 5 minutes. Stir tomato sauce, chili powder, parsley, oregano, salt, and black pepper into the chicken mixture.
             Divide mixture evenly into tortillas, roll the tortillas around the filling, and arrange in a baking dish. Cover with enchilada sauce and remaining 1 cup Monterey Jack cheese.
             Bake in preheated oven until cheese topping melts and begins to brown, about 15 minutes.")

             Recipe.create!(title: "Vegan Chunky Chili",
             description: "If you are entertaining mixed palettes, this meal will satisfy all tastes. A from-scratch chili that uses many different vegetables as well as beans, lentils and tofu to provide that 'full' feeling that chili with meat offers. Add fresh parsley and basil to taste, if desired. I prefer to let the chili sit overnight in the refrigerator before serving.",
             instruction: "Drain and rinse kidney beans, white beans and lentils. Combine in a large pot and cover with water; boil over medium-high to high heat for 1 hour, or until tender.
             Meanwhile, in a large saucepan over high heat, combine tomatoes and water; bring to a boil. Reduce heat to low and simmer, uncovered, for 1 hour, or until tomatoes are broken down.
             Stir the tomatoes into the beans and add mushrooms, green bell pepper, red bell pepper, green beans, celery, onions and tofu. Season with salt, pepper, onion powder, garlic powder and chili powder to taste. Simmer for 2 to 3 hours, or until desired consistency is reached.")

             Recipe.create!(title: "Grandma's Green Bean Casserole",
             description: "This recipe is much better than the standard mushroom soup and French fried onion version.",
             instruction: "Preheat oven to 350 degrees F (175 degrees C).
             Melt 2 tablespoons butter in a large skillet over medium heat. Stir in flour until smooth, and cook for one minute. Stir in the salt, sugar, onion, and sour cream. Add green beans, and stir to coat.
             Transfer the mixture to a 2 1/2 quart casserole dish. Spread shredded cheese over the top. In a small bowl, toss together cracker crumbs and remaining butter, and sprinkle over the cheese.
             Bake for 30 minutes in the preheated oven, or until the top is golden and cheese is bubbly.")

             Recipe.create!(title: "Charley's Slow Cooker Mexican Style Meat",
             description: "Preheat oven to 350 degrees F (175 degrees C).
             Melt 2 tablespoons butter in a large skillet over medium heat. Stir in flour until smooth, and cook for one minute. Stir in the salt, sugar, onion, and sour cream. Add green beans, and stir to coat.
             Transfer the mixture to a 2 1/2 quart casserole dish. Spread shredded cheese over the top. In a small bowl, toss together cracker crumbs and remaining butter, and sprinkle over the cheese.
             Bake for 30 minutes in the preheated oven, or until the top is golden and cheese is bubbly.",
             instruction: "Trim the roast of any excess fat, and season with salt and pepper. Heat olive oil in a large skillet over medium-high heat. Place the beef in the hot skillet, and brown it quickly on all sides.
             Transfer the roast to a slow cooker and top it with the chopped onion. Season with chile peppers, chili powder, cayenne pepper, hot pepper sauce, and garlic powder. Add enough water to cover 1/3 of the roast.
             Cover, and cook on High for 6 hours, checking to make sure there is always at least a small amount of liquid in the bottom of the cooker. Reduce heat to Low, and continue cooking for 2 to 4 hours, or until meat is totally tender and falls apart.
             Transfer the roast to a bowl and shred it using two forks (reserve 2 cups of cooking liquid, if desired). Serve in tacos or burritos (see Cook's Note).")
