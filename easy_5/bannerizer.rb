# Bannerizer
# Write a method that will take a short line of text, and print it within a box.

# Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.

#input: string, output strings

# size of box will depend on size of string.
# how to make box with empty string:
# two ticks on top and bottom frames, three on sides, corners are plus signs
# hardcode first, then work with dynamic
# sides will always be three, there fore 5 lines of output

# we need variable that dictates how many ticks/white space neededfor other lines of output.
# -based on string size

def print_in_box(str)
  extra_ticks = ""
  extra_spaces = ""
  str.size.times do
        extra_ticks << "-"
        extra_spaces << " "          
  end 

p "+-" + extra_ticks + "-+"  
p "| " + extra_spaces + " |"
p "| " + str + " |"
p "| " + extra_spaces + " |"
p "+-" + extra_ticks + "-+"
end


print_in_box('')
print_in_box('a')
print_in_box('To boldly go where no one has gone before.')
