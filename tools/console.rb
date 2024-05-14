require_relative '../config/environment.rb'

pb_and_j = Recipe.new("PB&J")
ham_and_cheese = Recipe.new("Ham and Cheese")

alex = User.new("Alex")
john = User.new("John")

card = RecipeCard.new(alex, pb_and_j)
card2 = RecipeCard.new(john, pb_and_j)
card3 = RecipeCard.new(john, ham_and_cheese)

# User.all
# Recipe.all
# RecipeCard.all

# Recipe.most_popular

p pb_and_j.add_ingredients("bread")

mac_and_cheese = Recipe.new("Mac and Cheese")
alex.add_recipe_card(mac_and_cheese, 5)

p mac_and_cheese
      binding.pry
