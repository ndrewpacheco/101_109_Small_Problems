# The String#to_i method converts a string of numeric characters 
# (including an optional plus or minus sign) to an Integer. 
# String#to_i and the Integer constructor (Integer()) behave similarly. 
# In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. 
# You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters;
# assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, 
# such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way 
# and calculate the result by analyzing the characters in the string.

# Examples

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# make a hash with keys as strings of integers and values as their matching integers

# split the string, and create an array with the matching integers
# find size of array and minus 1, to create the exponent

# go through each element that array, and times it by 10 x exponent, and add number to a local var
# minus 1 to exponent

STR_TO_INTS = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}

def string_to_integer(string)

  arr_of_ints = string.chars.map {|char| STR_TO_INTS[char]}
  exponent = arr_of_ints.size - 1

  final_number = 0
  arr_of_ints.each do |int|
    final_number += int * (10 ** exponent)
    exponent -= 1
  end
  final_number
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570
