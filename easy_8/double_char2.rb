# Write a method that takes a string,

# and returns a new string in which every consonant character is doubled. 
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Examples:

# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

def double_consonants(str)
  str_arr = str.chars
  new_arr = []
  str_arr.each do |element|
    new_arr << element
    new_arr << element if element.match?(/[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/)
  end
  new_arr.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""