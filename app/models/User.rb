class User

attr_accessor :recipes

  @@all = []

def initialize(recipes, allergens)
  @recipes = recipes
  @allergens = allergens

  @@all << self
end

def self.all
  @@all
end



end
