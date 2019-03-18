class Ingredient


  @@all = []

  def initialize(name)

    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def self.most_common_allergen
      @@all.max_by do |ingredient|
        ingredient
      end
  end

end
