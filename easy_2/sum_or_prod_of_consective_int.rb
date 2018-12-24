=begin 

Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine
the sum or product of all numbers between 1 and the entered integer.

Examples:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

input: integer, greater than 0 => user_num
input: string, either 's' or 'p'

if 'p', range of integers from 1 the user_num is multplied to get product
if 's', range of integers from 1 the user_num is added to get sum

=end

puts ">> Please enter an integer greater than 0:"
user_num = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
comp_choice = gets.chomp.downcase

if comp_choice == "s"
  sum = (1..user_num).reduce{|sum, num| sum + num}
  puts "The sum of the integers between 1 and #{user_num} is #{sum}."
elsif comp_choice == "p"
  product = (1..user_num).reduce{|product, num| product * num}
  puts "The product of the integers between 1 and #{user_num} is #{product}."
else
  puts "Sorry, no workie."
end