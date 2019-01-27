# Write a method that takes an Array as an argument, 
# and returns two Arrays (as a pair of nested Arrays)
# that contain the first half and second half of the original Array, respectively.
# If the original array contains an odd number of elements, 
# the middle element should be placed in the first half Array.

# Examples:

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# save size of input arr into a variable. 
# find the half length of arr.
# slice the orginal arr by the half length, and ref to variable
# nest both arrays into an array and return it


def halvsies(arr)
  arr_size = arr.size
  arr_half_length = arr.size / 2


  if arr.size.even?
    new_arr = arr.slice!(arr_half_length, arr_size)
  else
    new_arr = arr.slice!(arr_half_length + 1, arr_size)
  end
  [arr, new_arr]
end

p halvsies([1, 2, 3, 4, 5, 6])
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]