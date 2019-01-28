# Staggered Caps (Part 1)
# Write a method that takes a String as an argument, 
# and returns a new String that contains the original value 
# using a staggered capitalization scheme in which every other character is capitalized,
# and the remaining characters are lowercase. 
# Characters that are not letters should not be changed, 
# but count as characters when switching between upper and lowercase.

# Example:

# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# downcase whole string. chars it. throgh each iteration, down/upcase a ltr 
# or ignore if it's white space


def staggered_case(str)
  str.upcase!
  staggered_arr = []

  str.chars.each_with_index do |char, idx|
    if char.match?(/[A-Z]/)
      if idx.odd?
        staggered_arr << char.downcase! 
      elsif idx.even?
        staggered_arr << char
      end
    else
      staggered_arr << char
    end
  end
  staggered_arr.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
