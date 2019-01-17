# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples:

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'



# a year as input, output is the century in which the year is in.

# input: integer, year
# output: string. determine which century, as well as which suffix.

# data structures: array that holds all the suffixes

    #exception, if the last two digits are 11, 12, or 13, suffix is "th"
    # if number ends in 1, suffix is "st"
    # if numbers end 2, suffix is "nd"
    # if number ends 3, suffix is "rd"
    # else suffix is "th"

    # make the integer into string, and match it to the suffix using include




# a century is 100 years
# anything year that is less than 100 will be the first century
# divided year by 100 to find which century
# 

def century(year)
  century_integer = 
  if year < 100
    1
  elsif year % 100 == 0
    (year / 100)
  else
    (year / 100) + 1
  end
  century = century_integer.to_s

  if century.end_with?("11") || century.end_with?("12") || century.end_with?("13")
    century << "th"
  elsif century.end_with?("1")
    century << "st" 
  elsif century.end_with?("2")
    century << "nd"   
  elsif century.end_with?("3")
    century << "rd"     
  else
    century << "th"
  end
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'


