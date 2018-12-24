# Write a method that returns an Array 
# that contains every other element of an Array that is passed in as an argument. 
# The values in the returned list should be those values that are in the 
# 1st, 3rd, 5th, and so on elements of the argument Array.

# Examples:



#input:array
#output:new array
# write a method, array as arg. The method will select every other element of the array, starting with first element
#if the element's index is 0, or even then it will select that element to the new array.

def oddities(array)
  new_array = array.select do |element|
    element_index = array.index(element)
    element_index.even? || element_index == 0
  end
  new_array
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []