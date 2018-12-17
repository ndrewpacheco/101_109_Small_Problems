# Write a method that takes one argument, an array containing integers, 
# and returns the average of all numbers in the array. 
# The array will never be empty and the numbers will always be positive integers.


# input: array of integers
# output: returns average of all the arrays

# average is the sum of all the numbers, and the divided by how many numbers you added up

# iterate through the array, adding all the values together and assigned to variable.
# divide the sum by the size of the array


def average(arr)
  sum = 0
  arr.each {|num| sum += num}
  (sum / arr.size).to_f
end 

puts average([1,2,3])
puts average([1, 5, 87, 45, 8, 4.5]) 
puts average([9, 47, 23, 95, 16, 2.5]) 