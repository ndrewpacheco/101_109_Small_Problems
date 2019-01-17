# In the previous exercise, you developed a method that converts non-negative numbers to strings. 
# In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

# Examples

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'


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

def signed_integer_to_string(number)
  if number < 0
    number *= -1
    "-" << integer_to_string(number)
  elsif number > 0
    "+" << integer_to_string(number)
  else
    integer_to_string(number)
  end
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

