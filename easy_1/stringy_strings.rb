#Write a method that takes one argument, a positive integer, 
#and returns a string of alternating 1s and 0s, always starting with 1. 
#The length of the string should match the given integer.

#input: integer, validate for positive?
#output: string, alternating 1s and 0s, starts on 1 . length of string == number

# create an string and a counter. counter will equal the number that is inputted.
# if number is even, push "1" to the string, and -= from number, if number is odd, push "0" and -= from number


#Further Exploration
#Modify stringy so it takes an optional argument that defaults to 1. 
#If the method is called with this argument set to 0,
# the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy(number, first_char = 1)
  string = ""

  if first_char == 1
    loop do
      break if number == 0
      string << "1" 
      number -= 1
      
      break if number == 0
      string << "0" 
      number -= 1 
    end
  else 
    loop do
      break if number == 0
      string << "0" 
      number -= 1
      
      break if number == 0
      string << "1" 
      number -= 1 
    end
  end
  string
end



# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

 puts stringy(6) 
 puts stringy(9, 0)



