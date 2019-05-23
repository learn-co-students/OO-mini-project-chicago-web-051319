class User

  attr_reader :name, :all

  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do |card|
        if card.user == self
          p card.recipe
        end
      end
  end

  def add_recipe_card(recipe, rating)
    add_recipe = RecipeCard.new(self, recipe)
    add_recipe.rating = rating
  end

  def allergens
    Allergy.all.select do |allergen|
        if allergen.user == self
          p allergen.ingredient
        end
      end
  end

end
