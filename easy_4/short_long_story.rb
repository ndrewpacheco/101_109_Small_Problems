# Write a method that takes two strings as arguments, 
# determines the longest of the two strings, 
# and then returns the result of concatenating 
# the shorter string, the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# Examples:



# inputs: 2 strings
# => output: 1 string
# => take both strings, assigned their lengths to a variable

def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"