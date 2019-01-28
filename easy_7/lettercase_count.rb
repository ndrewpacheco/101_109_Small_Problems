# Lettercase Counter

# Write a method that takes a string, and then returns a hash that contains 3 entries: 
# one represents the number of characters in the string that are lowercase letters, 
# one the number of characters that are uppercase letters, 
# and one the number of characters that are neither.

# Examples

# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# split the string
# go through each element, if its lower then add to lowercase key, yadda.
# use regex to match

def letter_case_count(str)
  str_arr = str.split('')
  counter_hsh = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }
  str_arr.each do |char|
    if char.match?(/[a-z]/)
      counter_hsh[:lowercase] += 1
    elsif char.match?(/[A-Z]/)
      counter_hsh[:uppercase] += 1
    else 
      counter_hsh[:neither] += 1
    end
  end
  counter_hsh
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
