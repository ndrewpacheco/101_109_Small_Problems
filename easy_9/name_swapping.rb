# Write a method that takes a first name, a space, 
# and a last name passed as a single String argument,
# and returns a string that contains the last name, a comma, a space, and the first name.

# Examples

# swap_name('Joe Roberts') == 'Roberts, Joe'

def swap_name(str)
  reversed_name = str.split.reverse
  "#{reversed_name[0]}, #{reversed_name[1]}"

end

p swap_name('Joe Roberts')
p swap_name('Joe Roberts') == 'Roberts, Joe'
