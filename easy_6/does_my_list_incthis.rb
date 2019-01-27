# Write a method named include?
# that takes an Array and a search value as arguments.
# This method should return true if the search value is in the array, false if it is not.
# You may not use the Array#include? method in your solution.

# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

#input: array, and search value
#output: boolean

#using each iteratation see if element matches with search_value
 
def include?(arr, search_value)
  answer = false
  arr.each do |element|
   answer = true if element == search_value
  end
  answer
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false 

