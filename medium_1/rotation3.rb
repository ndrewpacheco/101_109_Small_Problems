# Rotation (Part 3)
# If you take a number like 735291, and rotate it to the left, you get 352917. 

# If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175.
# Keep the first 2 digits fixed in place and rotate again to 321759.
# Keep the first 3 digits fixed in place and rotate again to get 321597.
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
# The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Example:

# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

# turn input string, then chars it.
# find the length, assign toa var

def max_rotation(number)

  number_arr = number.to_s.chars
  rotating_digit = number_arr.size
  n = rotating_digit

  n.times do 
  number = rotate_rightmost_digits(number, rotating_digit)
  number
  rotating_digit -= 1
  end
  number
end


    

def rotate_rightmost_digits(digits, n)
  new_arr = digits.to_s.chars
  rotating_digit = new_arr[-n]
  new_arr.delete_at(-n)
  new_arr << rotating_digit
  new_arr.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845


