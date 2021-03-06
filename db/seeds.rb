# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# "Fred Meyers"
GroceryStore.create(address:"915 NW 45Th St Seattle, WA 98107", chain: "Fred Meyers")
GroceryStore.create(address:"100 NW 85th St, Seattle, WA 98117", chain: "Fred Meyers")
GroceryStore.create(address:"13000 Lake City Way NE, Seattle, WA 98125", chain: "Fred Meyers")

# "Safeway"
GroceryStore.create(address:"12318 15th Ave NE, Seattle, WA 98125", chain: "Safeway")
GroceryStore.create(address:"7300 Roosevelt Way NE, Seattle, WA 98115", chain: "Safeway")
GroceryStore.create(address:"4732 Brooklyn Ave NE, Seattle, WA 98105", chain: "Safeway")
GroceryStore.create(address:"7340 35th Ave NE, Seattle, WA 98115", chain: "Safeway")
GroceryStore.create(address:"8340 15th Ave NW, Seattle, WA 98117", chain: "Safeway")
GroceryStore.create(address:"1423 NW Market St, Seattle, WA 98107", chain: "Safeway")
GroceryStore.create(address:"3020 NE 45th St, Seattle, WA 98105", chain: "Safeway")
GroceryStore.create(address:"2201 E Madison St, Seattle, WA 98112", chain: "Safeway")
GroceryStore.create(address:"1410 E John St, Seattle, WA 98112", chain: "Safeway")
GroceryStore.create(address:"516 1st Ave W, Seattle, WA 98119", chain: "Safeway")
GroceryStore.create(address:"4754 42nd Ave SW, Seattle, WA 98116", chain: "Safeway")
GroceryStore.create(address:"3820 Rainier Ave S, Seattle, WA 98118", chain: "Safeway")
GroceryStore.create(address:"2622 California Ave SW, Seattle, WA 98116", chain: "Safeway")

# "Wholefoods"
GroceryStore.create(address:"1026 NE 64th St, Seattle, WA 98115", chain: "Wholefoods")
GroceryStore.create(address:"2001 15th Ave W, Seattle, WA 98119", chain: "Wholefoods")
#GroceryStore.create(address:"4755 Fauntleroy Way SW Ste 190, Seattle, WA 98116", chain: "Wholefoods")
GroceryStore.create(address:"1001 Broadway, Seattle, WA 98122", chain: "Wholefoods")
GroceryStore.create(address:"2210 Westlake Ave, Seattle, WA 98121", chain: "Wholefoods")

# "QFC"
GroceryStore.create(address:"1531 NE 145th St, Seattle, WA 98155", chain: "QFC")
GroceryStore.create(address:"11100 Roosevelt Way NE, Seattle, WA 98125", chain: "QFC")
GroceryStore.create(address:"9999 Holman Rd NW, Seattle, WA 98117", chain: "QFC")
GroceryStore.create(address:"8400 35th Ave NE, Seattle, WA 98115", chain: "QFC")
GroceryStore.create(address:"2746 NE 45th St, Seattle, WA 98105", chain: "QFC")
GroceryStore.create(address:"1801 N 45th St, Seattle, WA 98103", chain: "QFC")
GroceryStore.create(address:"5700 24th Ave NW, Seattle, WA 98107", chain: "QFC")
GroceryStore.create(address:"1600 W Dravus St, Seattle, WA 98119", chain: "QFC")
GroceryStore.create(address:"500 Mercer St, Seattle, WA 98109", chain: "QFC")
GroceryStore.create(address:"417 Broadway E, Seattle, WA 98102", chain: "QFC")
GroceryStore.create(address:"416 15th Ave E, Seattle, WA 98112", chain: "QFC")
GroceryStore.create(address:"1401 Broadway, Seattle, WA 98122", chain: "QFC")
GroceryStore.create(address:"2707 Rainier Ave S, Seattle, WA 98144", chain: "QFC")
GroceryStore.create(address:"4550 42nd Ave SW, Seattle, WA 98116", chain: "QFC")

# "Basic Products"

Item.create(name: "Toilet Paper", category: "Personal Hygiene/ Cleaning")
Item.create(name: "Paper Towels", category: "Personal Hygiene/ Cleaning")
Item.create(name: "Hand Sanitizer", category: "Personal Hygiene/ Cleaning")
Item.create(name: "Hand Soap", category: "Personal Hygiene/ Cleaning")
Item.create(name: "Cleaning Wipes", category: "Personal Hygiene/ Cleaning")
Item.create(name: "Dish Soap", category: "Personal Hygiene/ Cleaning")
Item.create(name: "Trash Bags", category: "Personal Hygiene/ Cleaning")
Item.create(name: "Disinfectant Cleaners", category: "Personal Hygiene/ Cleaning")
Item.create(name: "Laundry Detergent", category: "Personal Hygiene/ Cleaning" )
Item.create(name: "Tissues", category: "Personal Hygiene/ Cleaning")
Item.create(name: "Bread", category: "Food")
Item.create(name: "Milk", category: "Food")
Item.create(name: "Rice", category: "Food")
Item.create(name: "Flour", category: "Food")
Item.create(name: "Eggs", category: "Food")
Item.create(name: "Pet Food", category: "Other")
Item.create(name: "Meat", category: "Food")
Item.create(name: "Pasta", category: "Food")
Item.create(name: "Cereal", category: "Food")
Item.create(name: "Butter", category: "Food")
Item.create(name: "Cooking Oils", category: "Food")
Item.create(name: "Cheese", category: "Food")
Item.create(name: "Yogurt", category: "Food")
Item.create(name: "Fruit", category: "Food")
Item.create(name: "Vegetables", category: "Food")
Item.create(name: "Canned Food", category: "Food")
Item.create(name: "Vinegar", category: "Food")
Item.create(name: "Spices", category: "Food")
Item.create(name: "Sugar", category: "Food")