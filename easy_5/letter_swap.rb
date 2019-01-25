# Given a string of words separated by spaces,
# write a method that takes this string of words 
# and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter,
# and that the string will always contain at least one word. 
# You may also assume that each string contains nothing but words and spaces

# Examples:

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# input: string, output: string
# # split the string into an array of words,
# iterate through each word,
# find the first letter, find the last letter
# replace them
# convert array back to a string

def swap(str_of_words)

arr_of_words = str_of_words.split.map do |word|
    first_ltr = word[0]
    last_ltr = word [-1]
    word[0] = last_ltr
    word[-1] = first_ltr
    word
  end
  arr_of_words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'