# Clean up the words
# Given a string that consists of some words and an assortment of non-alphabetic characters,
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
#If one or more non-alphabetic characters occur in a row,
# you should only have one space in the result (the result should never have consecutive spaces).

# Examples:

# cleanup("---what's my +*& line?") == ' what s my line '

# input: string, output: string
# split string into array of chars
# iterate through each element to see if it matches a non-alpha char or not
# if it does, replace it with a space
# if the element next to first element in the array is a space, delete it

def cleanup(str)

  arr_of_chars = str.chars.map do |char|
    if /[a-zA-z]/.match?(char)
      char
    else
      " "
    end
  end
  counter = -1
      arr_of_chars.delete_if do |char|
        counter += 1
      char == " " && char == arr_of_chars[counter + 1]
    end
  arr_of_chars.join("")         
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---what's my +*& line") == ' what s my line'
p cleanup("-what's my +*& line?") == ' what s my line '

