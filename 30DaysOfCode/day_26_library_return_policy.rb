# https://www.hackerrank.com/challenges/30-nested-logic/problem
require 'pry'

def calculate_fine(return_month, return_day, expected_month, expected_day)
  return daily_fine(return_day - expected_day) if
    return_month == expected_month && return_day > expected_day

  return monthly_fine(return_month - expected_month) if
    return_month > expected_month
end

def monthly_fine(num_of_months)
  500 * num_of_months
end

def daily_fine(num_of_days)
  15 * num_of_days
end

return_date = gets.rstrip.split(' ').map(&:to_i)

expected_return_date = gets.rstrip.split(' ').map(&:to_i)

return_day = return_date[0]
return_month = return_date[1]
return_year = return_date[2]

expected_day = expected_return_date[0]
expected_month = expected_return_date[1]
expected_year = expected_return_date[2]

if return_date == expected_return_date
  puts 0
elsif return_year < expected_year
  puts 0
elsif return_year > expected_year
  puts 10_000
elsif return_month < expected_month
  puts 0
elsif return_month == expected_month && return_day <= expected_day
  puts 0
else
  puts calculate_fine(return_month, return_day, expected_month, expected_day)
end

# ruby day_26_library_return_policy.rb 
# 9 6 2015
# 6 6 2015

# 45

# ruby day_26_library_return_policy.rb
# 23 12 1234
# 19 9 2468

# 0

# ruby day_26_library_return_policy.rb
# 24 10 1776
# 10 10 1776

# 210
