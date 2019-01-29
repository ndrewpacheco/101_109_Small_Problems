# Write a method that returns a list of all substrings of a string. 
# The returned list should be ordered by where in the string the substring begins. 
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on. 
# Since multiple substrings will occur at each position, 
# the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

# Examples:

# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]


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


# the method substrings_at_start is defined take in a string variable.



p substrings('abcde') == [
   'a', 'ab', 'abc', 'abcd', 'abcde', 
   'b', 'bc', 'bcd', 'bcde',
   'c', 'cd', 'cde',
   'd', 'de',
   'e'
 ]