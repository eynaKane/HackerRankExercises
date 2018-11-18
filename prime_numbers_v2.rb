# https://www.hackerrank.com/challenges/30-running-time-and-complexity/problem
require 'pry'

def prime_or_not(data)
  return 'Not prime' if data == 1
  
  ctr = 2
  prime = true
  remainder = nil

  while remainder != 0 && ctr < data
    remainder = data % ctr
    if remainder.zero?
      prime = false
      break
    end
    ctr += 1
  end

  prime ? 'Prime' : 'Not prime'
end

T = gets.to_i

T.times do
  data = gets.to_i
  puts prime_or_not(data)
end

# ruby prime_numbers.rb
# 3
# 12
# Not prime

# 5
# Prime

# 7
# Prime

# ruby prime_numbers.rb
# 2
# 31
# Prime

# 33
# Not prime
