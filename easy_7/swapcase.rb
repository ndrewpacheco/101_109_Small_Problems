# Write a method that takes a string as an argument and 
# returns a new string in which every uppercase letter is replaced by its lowercase version, 
# and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Example:

# swapcase('CamelCase') == 'cAMELcASE'

# if this char is lowercase alpha, up case it. elsif this char is uppercaseaplha, lower it
# else do nadda

# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def swapcase(str)
  chars_of_str = str.chars

  chars_of_str.map! do |char|
    if char.match?(/[a-z]/)
      char.upcase
    elsif char.match?(/[A-Z]/)
      char.downcase
    else
    char
    end
  end
  chars_of_str.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'