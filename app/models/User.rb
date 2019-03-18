require'pry'
class User

attr_accessor  :recipes, :allergens

  @@all = []

  def initialize

    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do |rc|
      rc.recipe == self
    end
  end

  def add_recipe_card(recipe, rating, date)
    RecipeCard.new(self, recipe, rating, date)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end



end
