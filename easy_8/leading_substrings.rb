# Write a method that returns a list of all substrings of a string
# that start at the beginning of the original string. 
# The return value should be arranged in order from shortest to longest substring.

# Examples:

# substrings_at_start('abc') == ['a', 'ab', 'abc']
# substrings_at_start('a') == ['a']
# substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# split string into chars. take the first elment. 
# iterate through array.
# while folowing a counter, add each element into a new arr



def substrings_at_start(str)
  new_arr = []
  chars_of_str = str.chars
  counter = 0

  chars_of_str.each do |char|
    new_arr << chars_of_str[0..counter]
    counter += 1
  end

  new_arr.map { |arr| arr.join }
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
