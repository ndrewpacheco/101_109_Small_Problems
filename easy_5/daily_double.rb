# Write a method that takes a string argument 
# and returns a new string that contains the value of the original string
# with all consecutive duplicate characters collapsed into a single character. 
# You may not use String#squeeze or String#squeeze!.

# Examples:

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# split string into  array using chars. iterate through each element, using a counter. if an element is 
#the same as the one before it, delete it. join array afterwards

def crunch(str)
  counter = -1
  chars_of_str = str.chars 
  chars_of_str.delete_if do |char|
    counter += 1
    char == chars_of_str[counter + 1]
  end
  chars_of_str.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''