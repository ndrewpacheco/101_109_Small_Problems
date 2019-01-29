require 'pry'
# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards as it does backwards. 

# The return value should be arranged in the same sequence as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case;
# that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are.
# In addition, assume that single characters are not palindromes.


# Examples:

# palindromes('abcd') == []

# palindromes('madam') == ['madam', 'ada']

# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# thoughts: will have to work around middle char. need a comparision algo, to determine if 
# str is a palindrone.

#'madam': we take the starting index to the middle index, and make a variable
# then the last index, to the middle, reverse it. make a variable.
def substrings(str)
  new_arr = []
  chars_of_str = str.chars
  

  str.size.times do

    counter = 0
    chars_of_str.each do |char|
      new_arr << chars_of_str[0..counter]
      counter += 1
    end
    chars_of_str.shift
  end

  new_arr.map { |arr| arr.join }
end

# def substrings_at_start(str)
#   new_arr = []
#   chars_of_str = str.chars
#   counter = 0

#   chars_of_str.each do |char|
#     new_arr << chars_of_str[0..counter]
#     counter += 1
#   end

#   new_arr.map { |arr| arr.join }
# end

def palindrome?(str)
  if str.size.odd?
    middle_index = str.size / 2
    first_half_string = str[0..middle_index]
    second_half_string = str[middle_index..-1].reverse
    first_half_string.chars == second_half_string.chars ? true : false
  else
    middle_index = str.size / 2
    first_half_string = str[0..middle_index - 1]

    second_half_string = str[middle_index..-1].reverse
    first_half_string.chars == second_half_string.chars ? true : false
  end
end

def palindromes(str)
 arr_of_substrings = substrings(str)
arr_of_substrings.select {|str| palindrome?(str) && str.size > 1}
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
   '-madam-', 'madam', 'ada', 'oo'
 ]
 p palindromes('knitting cassettes') == [
   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
 ]

