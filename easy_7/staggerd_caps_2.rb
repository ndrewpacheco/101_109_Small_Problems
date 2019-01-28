
# Staggered Caps (Part 2)

# Modify the method from the previous exercise
# so it ignores non-alphabetic characters when determining whether 
# it should uppercase or lowercase each letter. 
# The non-alphabetic characters should still be included in the return value;
# they just don't count when toggling the desired case.

# Example:

# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


def staggered_case(str)
  str.upcase!
  staggered_arr = []
  counter = 0

  str.chars.each_with_index do |char, idx|
    if char.match?(/[A-Z]/)
      if counter.odd?
        staggered_arr << char.downcase! 
        counter += 1
      else
        staggered_arr << char
        counter += 1
      end
    else
       staggered_arr << char
    end
  end
  staggered_arr.join
 
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
