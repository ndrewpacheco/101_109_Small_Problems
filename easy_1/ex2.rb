=begin
  
understand problem:
  
find out if an integer is odd. It may be positive, negative or zero. 

  test cases: 
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

data structure:
inputs: integer
outputs: boolean

algorithm:
if the interger has a modolo of 1, it is an odd number and should output true. 
  else it should output false
=end

def is_odd?(num)
  num % 2 == 1  
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true