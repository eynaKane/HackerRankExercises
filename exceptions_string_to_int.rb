# https://www.hackerrank.com/challenges/30-exceptions-string-to-integer/problem
require 'pry'

S = gets.strip

begin
  puts Integer(S)
rescue ArgumentError
  puts 'Bad String'
end

# ruby exceptions_string_to_int.rb
# 122

# 122

# ruby exceptions_string_to_int.rb
# s

# Bad String
