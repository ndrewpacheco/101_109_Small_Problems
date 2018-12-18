#Build a program that randomly generates and prints Teddy's age. 
#To get the age, you should generate a random number between 20 and 200.

# Further Exploration
#Modify this program to ask for a name, and then print the age for that person. 
# For an extra challenge, use "Teddy" as the name if no name is entered.



puts "Name please:"
name = gets.chomp

name = "Teddy" if name == ""
num = rand(20..200) 

puts "#{name} is #{num} years old"
# Teddy is 69 years old!

