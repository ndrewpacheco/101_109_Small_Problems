=begin
  
Write a method that takes one argument, a string containing one or more words,
 and returns the given string with all five or more letter words reversed. 
 Each string will consist of only letters and spaces. 
Spaces should be included only when more than one word is present.  

understanding the problem:
we need a method that reverses all the letters in word, if there are 5 or more letters in the word.
  Spaces should be included only when more than one word is present.  

input: string
output: string

data structure: string, array

algorithm:

if the string contains no spaces, use the reverse method.
elsif split the string into an array
  iterate through each item in array
    if the item has 5 or more characters, reverse the item
  join the array, seperated by spaces
=end

def reverse_words(words)
  words_array = words.split
  if words_array.size == 1
    words.reverse
  else
    words_array.map! do |word|
      if word.size >= 5
        word.reverse
      else
        word
      end
    end 
    words_array.join(' ')
  end
end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS