# Write a method that takes a string,
# and returns a new string in which every character is doubled.

# Examples:

# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

def repeater(str)
  str_arr = str.chars
  new_arr = []
  str_arr.each do |element|
    new_arr << element
    new_arr << element
  end
  new_arr.join
end

p repeater('Hello')
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''