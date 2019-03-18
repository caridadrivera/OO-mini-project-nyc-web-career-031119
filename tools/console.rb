require_relative '../config/environment.rb'

#Ingredient
cheese = Ingredient.new
chicken = Ingredient.new
milk = Ingredient.new
milk = Ingredient.new

#attr_accessor :users, :ingredients, :allergens
spaghetti = Recipe.new
chickenparm = Recipe.new
friedchicken = Recipe.new


#attr_accessor  :recipes, :allergens
fil = User.new
cari = User.new
dave = User.new



# user, recipe, rating, date
 Card1 = RecipeCard.new(fil, spaghetti, 3, "2018-04-21")
 Card2 = RecipeCard.new(cari, chickenparm, 2, "2017-03-01")
 Card3 = RecipeCard.new(fil, friedchicken, 4, "2019-05-01")
 Card4 = RecipeCard.new(cari, chickenparm, 5, "2019-10-01")


Allergen1 = Allergen.new(fil, cheese)
Allergen2 = Allergen.new(cari, cheese)
Allergen3 = Allergen.new(dave, milk)
Allergen4 = Allergen.new(cari, milk)






binding.pry
"hiiii"
