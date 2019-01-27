# Write a method that takes an Array as an argument, and reverses its elements in place;
# that is, mutate the Array passed into this method.
# The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:

# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []

# pop element and shift it 
# shift the last element of the arr to the first index using shift



def reverse!(arr)
  counter_arr = []
  length = arr.size
  return arr if length == 0
  length.times do
    num = arr.pop
    counter_arr << num
  end
  loop do
    arr << (counter_arr.shift)
    break if arr.size == length 
  end
  arr
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]
p list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]
p list = []
p reverse!(list) == []
p list == []