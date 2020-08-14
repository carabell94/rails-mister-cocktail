# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'json'
require 'open-uri'

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.create(name: 'lemon')
# Ingredient.create(name: 'ice')
# Ingredient.create(name: 'mint leaves')
# Ingredient.create(name: 'vodka')
# Ingredient.create(name: 'rum')
# Ingredient.create(name: 'soda water')
# Ingredient.create(name: 'tequila')
# Ingredient.create(name: 'orange juice')
# Ingredient.create(name: 'lime')
Ingredient.create(name: 'Sugar Syrup')
Ingredient.create(name: 'White Rum')
Ingredient.create(name: 'Ice')
Ingredient.create(name: 'Strawberries')
Ingredient.create(name: 'Mint Leaves')
Ingredient.create(name: 'Coconut Cream')
Ingredient.create(name: 'Jameson Irish Whiskey')

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_url = open(url).read
ingredients = JSON.parse(ingredients_url)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end
