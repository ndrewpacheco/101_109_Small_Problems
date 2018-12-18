# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# ----

# input: length (float), width(float) in meters
# output: area (float) in meters, area (float) in feet

 # prompt for length, then width
 # convert the user's input to float
 # area = length x width
 #convert  to feet as well

SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_in_meters = (length * width).round(2)

area_in_feet = (area_in_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{area_in_meters} square meters (#{area_in_feet} square feet).
"

