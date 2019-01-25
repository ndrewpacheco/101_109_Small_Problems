# The time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"
# Disregard Daylight Savings and Standard Time and other complications.

# input: integer, output: string
#
# if input is positive, divide number by 60 to find hours, then also module number by 60 to find minutes.
# save both to variable

# if input is negative, subtract the number from total minutes in a day. then the the above code. 

# turn the variables into a string

def time_of_day(num)
  hour = 0
  minutes = 0
  num %= 1440

  if num >= 0
    num %= 1440 
  else
    num = 1440 - num
  end

  hour = num / 60
  minutes = num % 60

  if hour < 10
    hour = "0" << hour.to_s
  else
    hour.to_s
  end

  if minutes < 10
    minutes = "0" << minutes.to_s
  else
    minutes.to_s
  end

  "#{hour}:#{minutes}"  
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
