# Diamonds!
# Write a method that displays a 4-pointed diamond in an n x n grid, 
# where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

# Examples

# diamond(1)

# *
# diamond(3)

#  *
# ***
#  *
# diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *


## whitespace + stars + whitespace, adjusted by n

# algo to determine how many stars are within the line, another algo for whitespace

# stars: start at one, then plus two each time, until we reach n


def diamond(n)
  star = "*"
  counter = 1
  whitespace = " "
  
  loop do 
    whitespace = " " * ((n - counter) / 2)
    puts whitespace + star * counter
    counter += 2
    break if counter == n
  end

  loop do 
    counter -= 2
    whitespace = " " * ((n - counter) / 2)
    puts whitespace + star * counter
    break if counter == 1
  end
end


diamond(9)