
# Sequence Count
# Create a method that takes two integers as arguments. 
# The first argument is a count, 
# and the second is the first number of a sequence that your method will create. 
# The method should return an Array that contains the same number of elements as the count argument,
# while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater,
# while the starting number can be any integer value. 
#If the count is 0, an empty list should be returned.

# Examples:

# sequence(5, 1) == [1, 2, 3, 4, 5]
# sequence(4, -7) == [-7, -14, -21, -28]
# sequence(3, 0) == [0, 0, 0]
# sequence(0, 1000000) == []


# first_Arg is a count. This will decide how many elments are in the output array.
# second_arg is the first number of the sequence of the method.
  # each elemnt will be multiples of the starting number.

#If the count is 0, an empty list should be returned.

# count can be a num.times loop

def sequence(count, starting_num)
  return_arr = []
  multiple = 1

  count.times do
    return_arr << starting_num * multiple
    multiple += 1
  end
  
  return_arr
end

p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

