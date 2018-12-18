=begin 

Build a program that displays when the user will retire 
and how many years she has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!


-----

inputs: age => integer, retiring age => integer
outputs : retiring year => int, years to go =>

years to go = retiring age - age

retiring year = current year + years to go
=end


puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retiring_age = gets.chomp.to_i

years_to_go = retiring_age - age

current_year = Time.new.year

retiring_year = current_year + years_to_go

puts "It's #{current_year}. You will retire in #{retiring_year}."
puts "You only have #{years_to_go} years to go!"