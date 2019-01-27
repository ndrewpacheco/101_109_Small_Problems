require 'pry'
# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
#  such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, 
# but the results grow at an incredibly rapid rate.
#  For example, the 100th Fibonacci number is 354,224,848,179,261,915,075
#  -- that's enormous, especially considering that it takes 6 iterations 
# before it generates the first 2 digit number.

# Write a method that calculates and returns 
# the index of the first Fibonacci number that has the number of digits specified as an argument. 
# (The first Fibonacci number has index 1.)

# Examples:

# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847
# You may assume that the argument is always greater than or equal to 2.

# # Will first need a algo that can calculate a fibonacci sequence


# find the first element in an fib_array, that has size amount from the arg

# creat a fib array, make all the numbers into strings, find the ztring size. 
# size == word.size 
# for each word, find its size. if it matches, break the loop. and sve size for the indx
# input, int. output, int.

def fibonacci(size)
  
  fib_arr = [1, 1]

  loop do 

    new_num = fib_arr.last + fib_arr[-2]
    fib_arr << new_num
    break if fib_arr.size == size 

  end
    fib_arr
end

def find_fibonacci_index_by_length(length)
  fib_arr = [1, 1]
  fib_index = 0

  loop do 
    new_num = fib_arr.last + fib_arr[-2]
    fib_arr << new_num
    
    break if fib_arr.last.to_s.length == length
  end

  fib_arr.size
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847