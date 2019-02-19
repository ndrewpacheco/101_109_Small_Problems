# Word to Digit
# Write a method that takes a sentence string as input, 
# and returns the same string with any sequence of the words 
# ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
#converted to a string of digits.

# Example:

# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

def word_to_digit(str)
  num_strings = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  num_hsh = Hash[num_strings.zip ("0".."9").to_a]

  num_hsh.each_pair {|key, value| str.gsub!(key, value)}
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
