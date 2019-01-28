# Write a method that takes an Array of integers as input,
# multiplies all the numbers together,
# divides the result by the number of entries in the Array, 
# and then prints the result rounded to 3 decimal places. 

#Assume the array is non-empty.

# Examples:

# show_multiplicative_average([3, 5])
# The result is 7.500

# show_multiplicative_average([6])
# The result is 6.000

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667

# input : array. multply all elements together, store in variable

def show_multiplicative_average(arr)
  ans = 1.to_f
  arr.each {|num| ans *= num}
  ans = (ans / arr.size).round(3)
  "%.3f" % ans
end

p  show_multiplicative_average([2, 5, 7, 11, 13, 17])
p show_multiplicative_average([3, 5])
p show_multiplicative_average([6])