# Write a method that takes a string with one or more space separated words 
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Examples

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# input: string output: hash

# split the string to an array, iterate through each word, and find the word length. add the length to a 
# hash key. Each time there is the same length, add it to the value in that hash.

def word_sizes(str)
  word_sizes_hsh = {}
  str.split.each {|word|  word_sizes_hsh[word.size] = 0 }
  str.split.each {|word|  word_sizes_hsh[word.size] += 1 }
  
  word_sizes_hsh
end



p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}