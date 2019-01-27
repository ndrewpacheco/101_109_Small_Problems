# Write a method that takes a positive integer, n, as an argument,
# and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images below) 
# should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****
# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

# dependant on n, the grid will have dimensions of n X n

def triangle(n)
  star = "*"
  space = " "
  counter = 1
  n.times do
    puts space * (n - counter) + star * counter
  counter += 1
  end
end

triangle(5)
triangle(9)
