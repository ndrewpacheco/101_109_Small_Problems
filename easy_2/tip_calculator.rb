=begin 

Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.

Example:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0


-----

inputs: float(bill), float(tip_percentage)
output: float(tip) round to 2 decimals
        float(total) round to 2 decmials

tip: (percentage / 100)  x bill
total is bill plus tip
=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip %?"
tip_percentage = gets.chomp.to_f

tip = ((tip_percentage / 100 ) * bill)
total = (bill + tip)

puts "The tip was #{"%0.2f" % tip}"
puts "The total was #{("%0.2f" % total)}"
