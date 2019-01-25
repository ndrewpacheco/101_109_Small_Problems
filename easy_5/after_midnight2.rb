# As seen in the previous exercise, 
#the time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:

# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# input: string, output: integer
# take the input, and figre out how many minutes there are, based on the  time

# after_midnight: take first two chars of the string, and convert to int, then take the int, times by 60,
# add it to total sum. take last two chars of string, and convert to int, add to total sum

# if total sum is more than 1439, output 0

# before_midnight: do same algo, but minus from 1440
def after_midnight(timestamp)
  total_sum = 0
  total_sum += ( timestamp[0,2].to_i * 60 )
  total_sum += timestamp[3,2].to_i
  return 0 if total_sum > 1439
  total_sum
end

def before_midnight(timestamp)
  total_sum = 0
  total_sum += ( timestamp[0,2].to_i * 60 )
  total_sum += timestamp[3,2].to_i
  return 0 if total_sum == 0
  1440 - total_sum
end

p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p after_midnight('00:00') == 0
