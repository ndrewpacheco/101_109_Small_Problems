
# In the previous exercise, you developed a method that converts simple numeric strings to Integers.
# In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# The String may have a leading + or - sign; 
# if the first character is a +,  your method should return a positive number; if it is a -, 
# your method should return a negative number. If no sign is given, 
# you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

# Examples

# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# test the first char of the string, if it's a "-", save it to a variable "sign" if its "+" save it to variable sign,
# else keep going


STR_TO_INTS = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0}

def string_to_signed_integer(string)
  array_of_chars = string.chars
  sign = array_of_chars.shift if array_of_chars.first == "+" || array_of_chars.first == "-"
  new_string = array_of_chars.join("")

  if sign == "-"
    string_to_integer(new_string) * -1
  else
    string_to_integer(new_string)
  end
end

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

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100