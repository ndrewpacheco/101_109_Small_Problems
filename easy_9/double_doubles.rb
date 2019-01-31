# A double number is a number with an even number of digits
# whose left-side digits are exactly the same as its right-side digits. 
#For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned as-is.

# Examples:

# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10
# Note: underscores are used for clarity above. 
# Ruby lets you use underscores when writing long numbers; 
# however, it does not print the underscores when printing long numbers. 
# Don't be alarmed if you don't see the underscores when running your tests.

# turn int into string, compare the first half with the second half, if they are the same they are doubles
# string size must be even, else not a double

def twice(num)
  chars_of_num = num.to_s.chars

  if chars_of_num.size.even?
    halfway_point = chars_of_num.size / 2
    second_half = chars_of_num[halfway_point..-1]
    first_half = chars_of_num[0..halfway_point-1]
    if second_half == first_half
      num
    else
      num * 2
    end
  else
    num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10