# Grade book
# Write a method that determines the mean (average) of the three scores passed to it, 
# and returns the letter value associated with that grade.

# Numerical Score Letter  Grade
# 90 <= score <= 100  'A'
# 80 <= score < 90  'B'
# 70 <= score < 80  'C'
# 60 <= score < 70  'D'
# 0 <= score < 60 'F'
# Tested values are all between 0 and 100.
# There is no need to check for negative values or values greater than 100.

# Example:

# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

def get_grade(grade1, grade2, grade3)
  avg = (grade1 + grade2 + grade3) / 3
  hsh = {
    "A" => (90..100).to_a,
    "B" => (80..89).to_a,
    "C" => (70..79).to_a,
    "D" => (60..69).to_a,
    "F" => (0..59).to_a
  }
  answer = hsh.select {|letter, array_o_num| array_o_num.any?(avg) }
  answer.keys[0]
end



p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
