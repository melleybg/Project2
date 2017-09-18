# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Recipe.destroy_all


classic = Ingredient.create!(name: "Classic", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/1.%20Super%20Simple%20Guacamole.jpg?itok=MFzPHmye",detail:"")
classic = Recipe.create!(name: "Classic",img_url: "", detail:"")

bougie = Ingredient.create!(name: "Bougie", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/8.%20Spicy%20Apple%20Guacamole.jpg?itok=L4B5IW7-",detail:"")
bougie = Recipe.create!(name: "Bougie",img_url: "", detail:"")

tropicana = Ingredient.create!(name: "Torpicana", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/6.%20Tropical%20Fruit%20Guacamole.jpeg?itok=jQGSAvbu",detail:"")
tropocana = Recipe.create!(name: "Tropicana",img_url: "", detail:"")

pomi = Ingredient.create!(name: "Pomi", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/10.%20Pomegranate%20Guacamole.jpg?itok=9KvmRoyt",detail:"")
pomi = Recipe.create!(name: "Pomi",img_url: "", detail:"")

godess = Ingredient.create!(name: "Godess", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/11.%20Greek%20Guacamole.jpg?itok=ocT1vlUu",detail:"")
godess = Recipe.create!(name: "Goddess",img_url: "", detail:"")

bacon = Ingredient.create!(name: "Bacon", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/14.%20Bacon-Cojita%20Guacamole.jpg?itok=31hhGNT2",detail:"")
bacon = Recipe.create!(name: "Bacon",img_url: "", detail:"")

minty = Ingredient.create!(name: "Minty", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/15.%20Mint%20and%20Pea%20Guacamole.jpg?itok=pmbiXu1T",detail:"")
minty = Recipe.create!(name: "Minty",img_url: "", detail:"")

crab = Ingredient.create!(name: "Crab", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/24.%20Crab%20Guacamole.jpg?itok=36W6iS_X",detail:"")
crab = Recipe.create!(name: "Crab",img_url: "", detail:"")

cashew = Ingredient.create!(name: "Cashew and Banana", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/25.%20Banana%20Cashew%20Guacamole.jpg?itok=SepdfLSy",detail:"")
cashew = Recipe.create!(name: "Cashew and Banana",img_url: "", detail:"")

magic = Ingredient.create!(name: "Magic", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/26.%20Magic%20Green%20Sauce.jpg?itok=6qHtd91V",detail:"")
magic = Recipe.create!(name: "Magic",img_url: "", detail:"")

fajita = Ingredient.create!(name: "Fajita", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/23.%20Fajita%20Guacamole.jpg?itok=491HB5Mb",detail:"")
fajita = Recipe.create!(name: "Fajita",img_url: "", detail:"")

poblano = Ingredient.create!(name: "Poblano", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/21.%20Roasted-Poblano-Charred-Corn-Guacamole.jpg?itok=JjAVWw7h",detail:"")
poblano = Recipe.create!(name: "Poblano",img_url: "", detail:"")

yogurty = Ingredient.create!(name: "Yogurty", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/20.%20Greek%20Yogurt%20Guacamole.jpg?itok=rmtCmmXP",detail:"")
yogurty = Recipe.create!(name: "Yogurty",img_url: "", detail:"")

spicy = Ingredient.create!(name: "Spicy", img_url:"https://greatist.com/sites/default/files/styles/article_main/public/19.%20Spicy%20Cheddar%20Cheese%20Guacamole.jpg?itok=MBvZ4KWB",detail:"")
spicy = Recipe.create!(name: "",img_url: "", detail:"")
