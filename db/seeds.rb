require_relative '../app/models/restaurant.rb'
require_relative '../app/models/dish.rb'
require_relative '../app/models/tag.rb'
require_relative '../app/models/dishtag.rb'
require 'pry'

Restaurant.destroy_all
Dish.destroy_all
DishTag.destroy_all
Tag.destroy_all

restaurants = ["Cracker Barrel","Ihop","McDonalds","Olive Garden","Dennys",
"Burger King","Starbucks","Chipotle", "Cava","Dunkin Donuts",
"Dominos","Vocelli","5 Guys","Wendys","Cheesecake Factory",
"Subway", "Popeyes", "Arbys", "BBQ Grill", "Chicken Pollo"]

dishes = ["Chicken Parmesan","Fajitas","Classic Burger","Burritos","Chicken Paprikash",
"Onion Soup","Chicken Soup","Tomato Soup","Lasagna","Ravioli",
"Chicken Tenders","Chicken Curry","Chicken Sandwich","Oreo Cheesecake","Bagels",
"Latte","Margarita Flatbread","Meat Balls","Rice Bowl", "Pizza",
"Ceasar Salad","Greek Salad","SpringRolls","Spicy Chicken Wrap","Spicy Chicken Soup"]

tags = ["Spicy","Vegetarian","Fried","Grilled","Toasted",
"Vegan","Gluten Free","Dairy Free","Fat Free",
"Non-Spicy", "Mild"]

restaurants.each do |restaurant|
    loop_restaurant = Restaurant.create(name: restaurant)

    dishes.sample(10).each do |dish|
        loop_dish = Dish.create(name: dish)
        loop_restaurant.dishes << loop_dish
        
        tags.sample(3).each do |tag|
            loop_tag = Tag.create(name: tag)
            DishTag.create(dish_id: loop_dish.id, tag_id: loop_tag.id)
        end
        # binding.pry
    end
end

# res = Restaurant.find_by(name: "Chipotle")

# binding.pry
# 0

