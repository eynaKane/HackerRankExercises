# https://www.hackerrank.com/challenges/repeated-string/problem
require 'json'
require 'stringio'
require 'pry'

def repeated_string(s, n)
  a_ctr = s.split(//).count { |char| char == 'a' }
  repeat_ctr = n / s.length
  total_a = a_ctr * repeat_ctr

  if (n % s.length).zero?
    total_a
  else
    missing_char_ctr = n - (s.length * repeat_ctr)
    missing_char = s[0...missing_char_ctr]
    total_a + missing_char.split(//).count { |char| char == 'a' }
  end
end

s = gets.to_s.rstrip

n = gets.to_i

result = repeated_string s, n

puts result

# ruby repeated_string.rb
# udjlitpopjhipmwgvggazhuzvcmzhulowmveqyktlakdufzcef
# rxufssqdslyfuiahtzjjdeaxqeiarcjpponoclynbtraaawrps
# 872514961806

# 69801196944

# ruby repeated_string.rb
# a
# 1000000000000

# 1000000000000

# ruby repeated_string.rb
# aba
# 10

# 7
