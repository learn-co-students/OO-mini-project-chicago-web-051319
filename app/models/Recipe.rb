class Recipe

  attr_reader :name

  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def self.most_popular
    #talk to RecipeCard. Selects the recipe with the most
    #RecipeCards
    recipe_hash = {}
    recipe_array = RecipeCard.all.collect do |card|
      card.recipe end

      recipe_array.each do |recipe|
        if !recipe_hash[recipe]
          recipe_hash[recipe] = 1
        else
          recipe_hash[recipe] += 1
        end
      end

      recipe_hash
      # binding.pry
    #Maybe talks to RecipeCard @@all
  end

  def users
    RecipeCard.all.select do |card|
        if card.recipe == self
          p card.user
        end
      end
  end

  def ingredients
      #talk to Recipeingredient - repeat format of .users
      #to return the ingredients
      RecipeIngredient.all.select do |card|
          if card.recipe == self
            p card.ingredient
          end
        end
  end

  def allergens

  end

  def add_ingredients(new_ingredient)
      new_ingred = RecipeIngredient.new(self, new_ingredient)
  end

end
