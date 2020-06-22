require_relative '../app/models/restaurant.rb'
require_relative '../app/models/dish.rb'
require_relative '../app/models/tag.rb'
require_relative '../app/models/dishtag.rb'

Restaurant.destroy_all

names = ["Cracker Barrel","Ihop","Mcdonalds","Olive Garden","Dennys",
"Burger King","Starbucks","Chipotle", "Cava","Dunkin Donuts",
"Dominos","Vocelli","5 Guys","Wendys","Cheesecake Factory",
"Subway", "Popeyes", "Arbys", "BBQ Grill", "Chicken Pollo"]

names.each do |restaurant|
    Restaurant.create(name: restaurant)
end


dishes = ["Chicken Parmesan","Fajitas","Classic Burger","Burritos","Chicken Paprikash",
"Onion Soup","Chicken Soup","Tomato Soup","Lasagna","Ravioli",
"Chicken Tenders","Chicken Curry","Chicken Sandwich","Oreo Cheesecake","Bagels",
"Latte","Margarita Flatbread","Meat Balls","Rice Bowl", "Pizza",
"Ceasar Salad","Greek Salad","SpringRolls","Spicy Chiken Wrap","Spicy Chicken Soup"]



tags = ["Spicy","Vegetarian","Fried","Grilled","Toasted",
"Vegan","Gluten Free","Dairy Free","Fat Free",
"Non-Spicy", "Mild"]