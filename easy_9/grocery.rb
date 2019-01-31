# Grocery List
# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# Example:

# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]


# create an array named grocery_list

# iterate through the input array, and push each item into grocery_list, with the int in that array dictating how many times

def buy_fruit(arr)
  grocery_list = []

  arr.each do |item|
    item[1].times do 

      grocery_list << item[0]
    end
  end
  grocery_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
   ["apples", "apples", "apples", "orange", "bananas","bananas"]

