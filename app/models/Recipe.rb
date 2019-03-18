class Recipe
  attr_accessor :users, :ingredients, :allergens

  @@all = []

  def initialize(users, ingredients, allergens)
    @users = users
    @ingredients = ingredients
    @allergens = allergens

    @@all << self
  end

  def self.all
    @@all
  end

  def add_ingredients(ingredient)
    RecipeIngredient.new(ingredient, self)
  end


end
