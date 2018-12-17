# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# input: num
#output: array

# method takes in a integer, and splits each digit. Each digit then becomes indexed into an array.
# integer to a string to make the split
# then split the string into its own array
# map that array so the strings return to integers


def digit_list(num)
  num.to_s.split("").map {|n| n.to_i }
end



puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] 
p digit_list(444) == [4, 4, 4]             # => true