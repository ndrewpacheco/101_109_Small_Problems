=begin
  
  
understand problem:
  create a method that repeatedly outputs a string based on given number of times.

test cases:
  repeat('Hello', 3)
  repeat('Bye', 10)

data structure:
  inputs: string
          number

  outputs: string * number of times



=end

def repeat(string, num)
  num.times do
    puts string
  end
end

repeat('Hello', 3)
repeat('Bye', 10)

  