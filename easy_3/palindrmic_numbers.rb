# Write a method that returns true if its integer argument is palindromic, false otherwise.
# A palindromic number reads the same forwards and backwards.

# Examples:

# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true


# inputs: integer
# outputs: boolean

# convert int into a string. Compare the string with the string being reversed

def palindromic_number?(number)
  number_as_string = number.to_s
  number_as_string.reverse == number_as_string
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

