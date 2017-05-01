# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Ingredient.destroy_all

shephards_pie = Recipe.create(author: nil, name: "Shephard's Pie w/ Cauliflower", source: "https://www.tastemade.com/shows/healthy-af/shepherds-pie-with-cauliflower-mash", photo_url: "http://www.ovenloveblog.com/wp-content/uploads/2013/09/sheppie5.jpg", servings: 6, total_cost: 15, directions: "1. Preheat the oven to 400 degrees. Grease a casserole dish and set aside.
	2. In a large pot, steam or boil cauliflower until tender.
	3. Heat 2 tablespoons of oil in a large skillet over medium high heat. Add the onion, celery, carrots and garlic and cook for 5 minutes.
	4. Add the ground beef to the pan and cook until browned. Add the parsley and season with salt and pepper. Let simmer while you prepare the cauliflower topping.
	5. Drain the cooked cauliflower. Mash or puree with a blender until smooth. Add 2 tablespoons of fat and season with salt and pepper.
	6. To assemble, spread the beef mixture on the bottom of the dish. Top with the cauliflower mixture and smooth with a spoon.
Bake for 30 minutes or until the top is brown and bubbly. Serve warm.")

egg_muffin = Recipe.create(author: nil, name: "Bacon & Veggie Egg Muffins", source: "https://mymealprepsunday.com/2016/03/06/bacon-veggie-egg-muffins/", photo_url: "https://farm8.staticflickr.com/7346/16593215412_81d3eecf0d_c.jpg", servings: 16, total_cost: 20, directions: "	1. Grease a muffin tin and preheat oven to 375 F.
	2. Cook bacon fully.
	3. Chop onion, pepper, and spinach.
	4. Whisk 7 eggs.
	5. Add cottage cheese, veggies, spices, and bacon. Mix.
	6. Pour the mixture into muffin tins and top with cheddar cheese.
Bake for 20-25 minutes or until fully cooked. Tip: Poke a knife in the center – if it comes out clean, it’s done!")

pb_bars = Recipe.create( author: nil, name: "Peanut Butter Trail Mix Bars", source: "http://sallysbakingaddiction.com/2012/12/15/peanut-butter-trail-mix-bars/", photo_url: "http://sallysbakingaddiction.com/wp-content/uploads/2012/12/No-Bake-Healthy-Peanut-Butter-Trail-Mix-Bars-everyone-will-love-these.jpg", servings: 16, total_cost: 25, directions: "Line an 8×8 baking pan with parchment paper. Leave extra on the sides to use as handles for removing the bars when they are finished. Set aside.
In a food processor (or blender), pulverize the almonds and cashews for about 10 seconds into small pieces, leaving some large chunks in tact. In a large bowl, combine the oats, ground flax, crushed nuts, chocolate chips, dried cranberries, and raisins. Mix thoroughly. Set aside.
Mix together melted peanut butter and honey in a small bowl and pour over the dry ingredients. Mix until each bit is fully coated. Scoop the mixture into prepared baking dish and press firmly until the tops are completely even. You'll want to pack it down nice and tight.
Place bars into the refrigerator to set up for at least one hour. Cut into 16 squares. Bars can be stored at room temperature for up to 1 week, in the refrigerator for up to 2 weeks, or in the freezer for up to 3 months. Thaw overnight in the refrigerator.")

Ingredient.create(name: "Cauliflower", amount: 2, measurement: "head", calories: 292, recipe: shephards_pie)
Ingredient.create(name: "Olive oil", amount: 2, measurement: "tbsp", calories: 238, recipe: shephards_pie)
Ingredient.create(name: "Onion", amount: 1, measurement: nil, calories: 44, recipe: shephards_pie)
Ingredient.create(name: "Celery", amount: 4, measurement: "ribs", calories: 16, recipe: shephards_pie)
Ingredient.create(name: "Carrots", amount: 4, measurement: nil, calories: 100, recipe: shephards_pie)
Ingredient.create(name: "Garlic", amount: 4, measurement: "cloves", calories: 16, recipe: shephards_pie)
Ingredient.create(name: "Turkey", amount: 2, measurement: "lbs", calories: 1080, recipe: shephards_pie)
Ingredient.create(name: "Parsley", amount: 4, measurement: "tbsp", calories: 10, recipe: shephards_pie)
Ingredient.create(name: "Butter", amount: 4, measurement: "tbsp", calories: 408, recipe: shephards_pie)

Ingredient.create(name: "Onion", amount: 1, measurement: nil, calories: 44, recipe: egg_muffin)
Ingredient.create(name: "Red bell pepper", amount: 1, measurement: nil, calories: 37, recipe: egg_muffin)
Ingredient.create(name: "Spinach", amount: 2, measurement: "cups", calories: 14, recipe: egg_muffin)
Ingredient.create(name: "Eggs", amount: 7, measurement: nil, calories: 546, recipe: egg_muffin)
Ingredient.create(name: "Cottage Cheese", amount: 2, measurement: "cups", calories: 354, recipe: egg_muffin)
Ingredient.create(name: "Turkey Bacon", amount: 5, measurement: "strips", calories: 210, recipe: egg_muffin)

Ingredient.create(name: "Almonds", amount: "2/3", measurement: "cup", calories: 554, recipe: pb_bars)
Ingredient.create(name: "Cashews", amount: "2/3", measurement: "cup", calories: 505, recipe: pb_bars)
Ingredient.create(name: "Rolled oats", amount: "1 1/2", measurement: "cup", calories: 450, recipe: pb_bars)
Ingredient.create(name: "Ground flax", amount: "1/3", measurement: "cup", calories: 256, recipe: pb_bars)
Ingredient.create(name: "Dried cranberries", amount: "1/3", measurement: "cup", calories: 123, recipe: pb_bars)
Ingredient.create(name: "Raisins", amount: "1/3", measurement: "cup", calories: 143, recipe: pb_bars)
Ingredient.create(name: "Honey", amount: "1/2", measurement: "cup", calories: 515, recipe: pb_bars)
Ingredient.create(name: "Peanut butter", amount: 1, measurement: "cup", calories: 1518, recipe: pb_bars)
