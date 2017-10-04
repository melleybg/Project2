# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Ingredient.destroy_all
Recipe.destroy_all


classic = Recipe.create!(name: "Classic", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/1.%20Super%20Simple%20Guacamole.jpg?itok=MFzPHmye",  detail:"Slice the avocados in half and remove the core. Scoop out the flesh into a bowl and then mash with a fork.
Chop the red onion finely, slice the cherry tomatoes into halves, finely chop the cilantro and add to the mashed avocado.
Squeeze in the half lime and add sea salt and black pepper to taste.
Serve with tortilla chips, sliced raw vegetables or flat breads")
classic = Ingredient.create!(name: "Classic", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/1.%20Super%20Simple%20Guacamole.jpg?itok=MFzPHmye",  detail: "3 Avocados
½ Small Red Onion (around ¼ cup finely chopped)
10 Cherry Tomatoes
¼ cup Cilantro
½ Lime (juiced)
Sea Salt
Black Pepper", recipe_id: classic.id)

bougie = Recipe.create!(name: "Bougie", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/8.%20Spicy%20Apple%20Guacamole.jpg?itok=L4B5IW7-", detail:"Add avocados to a bowl and break apart with a fork.
Add remaining ingredients to the bowl and stir to combine.
Serve with tortilla chips and enjoy!")
bougie = Ingredient.create!(name: "Bougie",img_url: "", detail:"2 avocados
1/2 cup canned black beans, drained and rinsed
1/2 cup frozen corn kernels, thawed
1/2 lime, juiced
2 tbsp. cilantro, chopped
1/2 jalapeño, diced
1/4 tsp. cumin
salt to taste
1/4 tsp. red pepper flakes (optional)", recipe_id: bougie.id)

tropicana = Recipe.create!(name: "Tropicana", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/6.%20Tropical%20Fruit%20Guacamole.jpeg?itok=jQGSAvbu",detail:"Roughly mash the avocados. Gently stir in the remaining ingredients.
Serve with tortilla chips.")
tropicana = Ingredient.create!(name: "Tropicana", img_url: "", detail:"3 medium ripe Avocados from Mexico
½ cup finely chopped pineapple
½ cup finely chopped mango
2 jalapeño peppers, seeded and finely chopped
⅓ cup chopped cilantro
¼ cup finely chopped red onion
1 tablespoons lime juice
1 garlic clove, minced
1 teaspoon salt
½ teaspoon black pepper", recipe_id: tropicana.id)

pomi = Recipe.create!(name: "Pomi", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/10.%20Pomegranate%20Guacamole.jpg?itok=9KvmRoyt",detail:"Remove pit from the avocados and place flesh in a medium-sized bowl. Add lime juice and salt and pepper and mix well until mostly smooth, but some chunks still remain.
Toast the pine nuts. Place pine nuts on a small skillet over low heat and toast until slightly browned, about 2-3 minutes. Make sure you are stirring constantly so they do not burn.
Place toasted pine nuts and pomegranate arils in the bowl with the avocado and mix well. Top with optional toppings if desired.
Enjoy!")

# each of these new lines in the detail attribute of an Ingredident should probably be a separate ingredient 
pomi = Ingredient.create!(name: "Pomi", img_url: "", detail:"2 large avocados (about 300 grams of flesh)
¼ cup pine nuts
½ cup pomegranate arils
juice of 1 lime
salt and pepper, to taste
optional toppings: chopped cilantro, chopped green onion, red pepper flakes")

# I ran this command and got this error
# $ rails db:seed
# rails aborted!
# ActiveRecord::RecordInvalid: Validation failed: Detail can't be blank
# The issue was `detail: ""` "" and " " both count as being blank for ActiveRecord
godess = Recipe.create!(name: "Godess", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/11.%20Greek%20Guacamole.jpg?itok=ocT1vlUu",detail:"---")
godess = Ingredient.create!(name: "Goddess", img_url: "", detail:"---")

bacon = Recipe.create!(name: "Bacon", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/14.%20Bacon-Cojita%20Guacamole.jpg?itok=31hhGNT2",detail:"---")
bacon = Ingredient.create!(name: "Bacon",img_url: "", detail:"---")

minty = Recipe.create!(name: "Minty", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/15.%20Mint%20and%20Pea%20Guacamole.jpg?itok=pmbiXu1T",detail:"---")
minty = Ingredient.create!(name: "Minty", img_url: "", detail:"---")

crab = Recipe.create!(name: "Crab", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/24.%20Crab%20Guacamole.jpg?itok=36W6iS_X",detail:"---")
crab = Ingredient.create!(name: "Crab", img_url: "", detail:"---")

cashew = Recipe.create!(name: "Cashew and Banana", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/25.%20Banana%20Cashew%20Guacamole.jpg?itok=SepdfLSy",detail:"---")
cashew = Ingredient.create!(name: "Cashew and Banana", img_url: "", detail:"---")

magic = Recipe.create!(name: "Magic", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/26.%20Magic%20Green%20Sauce.jpg?itok=6qHtd91V",detail:"---")
magic = Ingredient.create!(name: "Magic", img_url: "", detail:"---")

poblano = Recipe.create!(name: "Poblano", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/21.%20Roasted-Poblano-Charred-Corn-Guacamole.jpg?itok=JjAVWw7h",detail:"---")
poblano = Ingredient.create!(name: "Poblano", img_url: "", detail:"---")

yogurty = Recipe.create!(name: "Yogurty", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/20.%20Greek%20Yogurt%20Guacamole.jpg?itok=rmtCmmXP", detail:"---")
yogurty = Ingredient.create!(name: "Yogurty",img_url: "", detail:"---")

spicy = Recipe.create!(name: "Spicy", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/19.%20Spicy%20Cheddar%20Cheese%20Guacamole.jpg?itok=MBvZ4KWB",detail:"---")
spicy = Ingredient.create!(name: "Spicy",img_url: "", detail:"---")

fajita = Recipe.create!(name: "Fajita", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/23.%20Fajita%20Guacamole.jpg?itok=491HB5Mb",detail:"---")
fajita = Ingredient.create!(name: "Fajita", img_url: "", detail:"---")
