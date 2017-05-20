require 'pry'
require 'babbler'

#user chooses from a list of main dishes
#user chooses 2 side dish items
#computer repeats users order
#computer totals lunch items and displays total

@dishes = [
    "1) Chicken $10", '2) Lasagna $15', '3) Chicken fried steak $20', '4) Grilled cheese sandwich $7',
    '5) Salmon $25', '6) Chile Rellenos $8', '7) Biscuit and Gravy $6'
  ]

@side_dishes_lists = [
    '1) Salad and Mashed Potatoes $4', '2) Caesar Salad and Baked Potato $4'
  ]

class Lunch_menu
  attr_accessor :name, :price

  def initialize (name, price)
    @name = name
    @price = price
  end

  def info
    puts "your dish is "

  end

end

@dish_1 = Lunch_menu.new("Chicken", 10)
@dish_2 = Lunch_menu.new("Lasagna", 15)
@dish_3 = Lunch_menu.new("Chicken fried steak", 20)
@dish_4 = Lunch_menu.new("Grilled cheese sandwich", 7)
@dish_5 = Lunch_menu.new("Salmon", 25)
@dish_6 = Lunch_menu.new("Chile Rellenos", 8)
@dish_7 = Lunch_menu.new("Biscuit and Gravy", 6)
@side_dish_1 = Lunch_menu.new("Salad", 2)
@side_dish_2 = Lunch_menu.new("Mashed Potatoes", 2)
@side_dish_3 = Lunch_menu.new("Caesar Salad", 2)
@side_dish_4 = Lunch_menu.new("Baked Potato", 2)


@food_ordered = []
@total = 0

def all_food
  puts "Your order is: "
  puts " "
  puts @food_ordered
  puts " "
  puts "Your total will now be $#{@total}\n"
end


def side_dishes
  puts "-------SIDE DISHES-------"
  puts @side_dishes_lists
  puts "Please choose 2 side dishes"
  chosen_side_dish = gets.strip.to_i
  case chosen_side_dish
  when 1
    @food_ordered << @side_dish_1.name << @side_dish_2.name
    @total = @total + @side_dish_1.price + @side_dish_2.price
    all_food
    #binding.pry
  when 2
    @food_ordered << @side_dish_3.name << @side_dish_4.name
    @total = @total + @side_dish_3.price + @side_dish_4.price
    all_food
  else
    puts "That side dish is not on the menu."
    side_dishes
  end
end

def lunch_menu
  puts "-------MAIN DISHES-------"
  puts @dishes
  puts "Which dish would you like?"
  dish_choice = gets.strip.to_i
  case dish_choice
  when 1
    @food_ordered << @dish_1.name
    @total = @total + @dish_1.price
    side_dishes
  when 2
    @food_ordered << @dish_2.name
    @total = @total + @dish_2.price
    side_dishes
  when 3
    @food_ordered << @dish_3.name
    @total = @total + @dish_3.price
    side_dishes
  when 4
    @food_ordered << @dish_4.name
    @total = @total + @dish_4.price
    side_dishes
  when 5
    @food_ordered << @dish_5.name
    @total = @total + @dish_5.price
    side_dishes
  when 6
    @food_ordered << @dish_6.name
    @total = @total + @dish_6.price
    side_dishes
  when 7
    @food_ordered << @dish_7.name
    @total = @total + @dish_7.price
    side_dishes
  else
    puts "That dish is not on the menu"
    lunch_menu

  end
end
lunch_menu
