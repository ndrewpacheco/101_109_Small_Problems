# Write a method that takes a string argument, 
# and returns true if all of the alphabetic characters inside the string are uppercase,
# false otherwise. Characters that are not alphabetic should be ignored.

# Examples:

# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

def uppercase?(str)
  allcase = /[a-zA-Z]/
  upcase_only = /[A-Z]/
  
  alpha_only = str.chars.select {|char| char.match?(allcase)}
  
  alpha_only.all? { |char| char.match?(upcase_only) }
  # p str.match?(allcase)
  # p str.match?(upcase_only)
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

