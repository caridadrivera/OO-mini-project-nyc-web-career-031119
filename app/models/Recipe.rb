class Recipe
  

  @@all = []

  def initialize

    @@all << self
  end

  def self.all
    @@all
  end

  def add_ingredients(ingredient)
    RecipeIngredient.new(ingredient, self)
  end


end
