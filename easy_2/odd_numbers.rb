# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.


odd_nums = (1..99).select{ |num| num.odd? }

odd_nums.each {|num| puts num }
