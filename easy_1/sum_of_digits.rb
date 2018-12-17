#Write a method that takes one argument, a positive integer, and returns the sum of its digits.


#For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# split number into an array, inject all the numbers in array to a variable


def sum(int)
  int.to_s.chars.map(&:to_i).reduce(:+)
end

# p sum(23) 
# p sum(496) 
# p sum(123_456_789) 

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45