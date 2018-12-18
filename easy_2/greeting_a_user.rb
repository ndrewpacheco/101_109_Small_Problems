=begin 
Greeting a user
Write a program that will ask for user's name. The program will then greet the user.
If the user writes "name!" then the computer yells back to the user.

Examples

What is your name? Bob
Hello Bob.
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

---
input: string => name
output: string

if the last char of the string is an "!", then the output will be the yelling string,
  else the output will be the normal string
=end

puts "What is your name?"
name = gets.chomp.capitalize

if name.chars.last == "!"
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end