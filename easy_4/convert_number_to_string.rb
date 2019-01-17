require 'pry'
# In the previous two exercises, 
# you developed methods that convert simple numeric strings to signed Integers. 
# In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, 
# such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

# Examples

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'


# input: integer, output: string
# take each digit of the number, and translate it into a string
# breakdown each digit of number, using module
INTS_TO_STRS = { 1 => "1",
                 2 => "2",
                 3 => "3",
                 4 => "4",
                 5 => "5",
                 6 => "6",
                 7 => "7",
                 8 => "8",
                 9 => "9",
                 0 => "0",
                  }


def num_breakdown(number)
  array_of_digs = []
  module_count = 10
  division_count = 1
    loop do
      digit = number % module_count
      array_of_digs << (digit / division_count)
      number -= digit
      module_count *= 10
      division_count *= 10
      break if number == 0
    end
  array_of_digs.reverse
end

def integer_to_string(number)
  array_of_digs = num_breakdown(number)
  array_of_chars = array_of_digs.map do |dig|
    INTS_TO_STRS[dig]
  end  
  array_of_chars.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
