#Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.


even_nums = (1..99).select{ |num| num.even? }

even_nums.each {|num| puts num }
