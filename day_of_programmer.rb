# https://www.hackerrank.com/challenges/day-of-the-programmer/problem
require 'json'
require 'stringio'

def day_of_programmer(year)
  return "26.09.#{year}" if year == 1918

  leap = if year < 1918
           (year % 4).zero?
         else
           (year % 400).zero? || ((year % 4).zero? && year % 100 != 0)
         end

  leap ? "12.09.#{year}" : "13.09.#{year}"
end

year = gets.strip.to_i

result = day_of_programmer year

puts result

# 2017
# 13.09.2017

# 2016
# 12.09.2016

# 1984
# 12.09.1984

# 1800
# 12.09.1800
