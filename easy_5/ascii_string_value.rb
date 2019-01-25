# Write a method that determines and returns 
# the ASCII string value of a string that is passed in as an argument. 
# The ASCII string value is the sum of the ASCII values of every character in the string. 
#(You may use String#ord to determine the ASCII value of a character.)



# input: string, output: integer
# split the string into an array of chars
# iterate through string, taking the .ord value of each char, and summing it up to a varaible

def ascii_value(str)
  str_value = 0
  str.chars.each {|char| str_value += char.ord }
  str_value
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

s
