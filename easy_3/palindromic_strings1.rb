# Write a method that returns true if the string passed as an argument is a palindrome,
# false otherwise. A palindrome reads the same forward and backward. 
# For this exercise, case matters as does punctuation and spaces.

# Examples:


#input: string
# output: boolean
#if a string is reversed, and it is the same as it was originally, the code will be true.
# this includes all case and characters




# def palindrome?(string)
#   string.reverse == string
# end

# p palindrome?('madam') 
# p palindrome?('Madam')          # (case matters)
# p palindrome?("madam i'm adam")  # (all characters matter)
# p palindrome?('356653') 


# Further Exploration
# Write a method that determines whether an array is palindromic;
# that is, the element values appear in the same sequence both forwards and backwards in the array. 
# Now write a method that determines whether an array or a string is palindromic; 
# that is, write a method that can take either an array or a string argument,
# and determines whether that argument is a palindrome. 
#You may not use an if, unless, or case statement or modifier.

def palindrome?(element)
   element.reverse == element
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

madam = "madam".split("")

p palindrome?(madam) == true
 p palindrome?('Madam'.split("")) == false          # (case matters)
 p palindrome?("madam i'm adam".split("")) == false # (all characters matter)
p palindrome?('356653'.split("")) == true
