# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# input: a string
# output: a string, with the words reveresed

# split the string into an array, 

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

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'