require 'open-uri'
require 'json'


url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients['drinks'].each { |i| Ingredient.create(name: i['strIngredient1']) }
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
p Ingredient.all.size
