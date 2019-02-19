# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765

# Write a recursive method that computes the nth Fibonacci number, 
# where nth is an argument to the method.

# Recursive methods have three primary qualities:

# They call themselves at least once.
# They have a condition that stops the recursion (n == 1 above).
# They use the result returned by themselves.



# if n is less than 2, return n
# else create an array that holds each number of the sequence, upto the nth index.
# this can be done by having a condition that stops the algo when the array.size == n

# return the last element of the array.

# fib sequence: start with an array of [1,1]
# push a new number to array. this number will be the sum of the last two items in the array 


def fibonacci(n)
  fib_arr = [1,1]
  if n < 3
    fib_arr.last
  else
    loop do 
      fib_arr << fib_arr[-1] + fib_arr[-2]
      break if fib_arr.size == n
    end
  fib_arr.last
  end
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
