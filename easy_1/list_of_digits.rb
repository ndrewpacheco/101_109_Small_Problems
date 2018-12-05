
# Write a method that takes one argument, a positive integer, 
# and returns a list of the digits in the number.

=begin
  

  inputs: number
  outputs: array

transform the number into a string. then split the string into seperate elements on the array, while turning 
them back to integers. 
  
=end


def digit_list(num)
  string_list = num.to_s.split(//)
  string_list.map {|n| n.to_i}
end



puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true