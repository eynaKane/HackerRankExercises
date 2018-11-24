# https://www.hackerrank.com/challenges/30-exceptions-string-to-integer/problem
require 'pry'

S = gets.strip

begin
  puts Integer(S)
rescue ArgumentError
  puts 'Bad String'
end

# ruby 30DaysOfCode/day_16_exceptions_string_to_int.rb
# 122

# 122

# ruby 30DaysOfCode/day_16_exceptions_string_to_int.rb
# abc

# Bad String
