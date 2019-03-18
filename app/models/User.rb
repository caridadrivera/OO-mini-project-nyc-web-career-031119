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

  def recipe_cards
    RecipeCard.all.select do |rc|
      rc.user == self
    end
  end

  def recipes
    self.recipe_cards.map do |rc|
      rc.recipe
    end
  end


  def add_recipe_card(recipe, rating, date)
    RecipeCard.new(self, recipe, rating, date)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    user_allergen = Allergen.all.select do |allergen|
      allergen.user == self
      end
      user_allergen.map do |allergen|
        allergen.ingredient
    end
  end

  def ratings
    self.recipe_cards.map do |rc|
      rc.rating
    end
  end

  def top_three_recipes
    self.ratings.sort.last(3)
  end

  def recipe_dates
    self.recipe_cards.map do |rc|
      rc.date
    end
  end

  def most_recent_recipe
    self.recipe_dates.sort.last(1)
  end




end
