# Write a method that takes an Array of Integers between 0 and 19, 
# and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, 
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Examples:

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# input: array of integers, output: array of integers
# data structures: hash constant, array of strings (numbers)

# map out the array of integers to an array of nubmers, using the hash constant
# sort this array, then match it back to the integers. 
STR_TO_INTS = {}
arr_of_str_nums = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven','eight', 'nine', 'ten', 'eleven', 
'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

arr_of_str_nums.each_with_index do |word, idx|
    STR_TO_INTS[idx] = word
  end

def alphabetic_number_sort(arr_of_int)
 mapped_arr = arr_of_int.map do |int|
    STR_TO_INTS[int]
  end
  mapped_arr.sort.map do |word|
    STR_TO_INTS.key(word)
  end
end


p alphabetic_number_sort([1,2,3,4,5])
 p alphabetic_number_sort((0..19).to_a) == [
   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
   6, 16, 10, 13, 3, 12, 2, 0
]
