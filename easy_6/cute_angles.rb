# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
# and returns a String that represents that angle in degrees, minutes and seconds. 
# You should use a degree symbol (°) to represent degrees,
# a single quote (') to represent minutes, and a double quote (") to represent seconds. 
# A degree has 60 minutes, while a minute has 60 seconds.

# Examples:

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Note: your results may differ slightly depending on how you round values, 
# but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, 
# e.g., 321°03'07".

# You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

# 1 deg = 60 min, 1 min = 60 seconds. 
# take the input's first two digits and make that the the degree
def leading_zero(num)
  if num.to_i < 10
    num.rjust(2, "0")
  else 
    num
  end
end

def dms(num)
  degree = num.to_i
  minutes = ((num - degree) * 60 ).round(2)
  seconds = ((minutes - minutes.to_i) * 60).round


  degree = degree.to_s
  minutes = leading_zero(minutes.to_i.to_s)
  seconds = leading_zero(seconds.to_s)

 "#{degree}#{DEGREE}#{minutes}'#{seconds}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")