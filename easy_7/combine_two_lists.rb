# Write a method that combines two Arrays passed in as arguments,
# and returns a new Array that contains all elements from both Array arguments, 
#with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Example:

# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


def interleave(arr1, arr2)
  new_arr = []
  length = arr1.size

  length.times do 
    new_arr << arr1.shift
    new_arr << arr2.shift
  end
  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']