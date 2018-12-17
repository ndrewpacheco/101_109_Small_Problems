def reverse_sentence(string)
 split_string = string.split(" ")
 counter = split_string.size
 new_arr = []
 loop do
  break if counter == 0
   new_arr << split_string.pop
   counter -= 1
 end
 new_arr.join(" ")
end

# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with all five or more letter words reversed. 
# Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.


#input: string with one or more words.
#output: returns the given string with all five or more letter words reversed.

# to check: 
# how many words in the string? if the string is only one word, there should be no spaces
# how many letters in the word? Go through each word, 
  # if there are less than 5 letters in a word, do not reverse it. Else do reverse


def reverse_words(words)
  split_words = words.split(" ") 
  split_words.map! do |word|
    if word.length < 5
      word
    else
      word.reverse
    end
  end
  split_words.join(" ")
end
puts reverse_words(" Andrew   ")
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS