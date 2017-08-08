puts "Ingredients destroy"
Ingredient.destroy_all
puts 'Creating Ingredients'
url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
serialized_ingredients = open(url).read
ingredients = JSON.parse(serialized_ingredients)
ingredients["drinks"].each do |x|
  Ingredient.create!(name: x["strIngredient1"])
  puts "#{x["strIngredient1"]} created!"
end
