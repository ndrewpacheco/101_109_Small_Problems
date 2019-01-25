# Modify the word_sizes method from the previous exercise 
# to exclude non-letters when determining word size. 
# For instance, the length of "it's" is 3, not 4.

# Examples

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}


# when str gets split, go through each word, and take away any non-alpha chars. 



def word_sizes(str)

    split_str = str.split.map do |word|
      split_chars = word.chars.select {|char| char.match?(/[a-zA-Z]/)}
      split_chars.join()
    end
  word_sizes_hsh = {}
  split_str.each {|word|  word_sizes_hsh[word.size] = 0 }
  split_str.each {|word|  word_sizes_hsh[word.size] += 1 }
  
  word_sizes_hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

