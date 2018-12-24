# Palindromic Strings (Part 2)
# Write another method that returns true if the string passed as an argument is a palindrome, 
# false otherwise. This time, however, your method should be case-insensitive, 
# and it should ignore all non-alphanumeric characters. 
# If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# Examples:



#input: string
# output: boolean 
# data struture: array. downcase the string. thensplit the string into an array.
# select all aplhanumeric characters only.
# 

def real_palindrome?(string)
  # original_input = string.downcase.split("")
  # alphanum_only_input = original_input.select do |element|
  #   (/[a-z0-9]/).match?(element)
  # end
  
  alphanum_only_input = string.downcase.gsub(/[^a-z0-9]/,"")
  alphanum_only_input.reverse == alphanum_only_input
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false