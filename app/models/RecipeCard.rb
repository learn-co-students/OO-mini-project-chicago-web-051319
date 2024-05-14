class RecipeCard

  attr_accessor :rating
  attr_reader :date, :user, :recipe

  @@all = []

  def initialize(user, recipe)
    @@all << self
    @date = Time.now
    @user = user
    @recipe = recipe
    @rating = 0
  end

  def self.all
    @@all
  end

end
