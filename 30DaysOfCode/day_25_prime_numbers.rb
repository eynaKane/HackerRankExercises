# https://www.hackerrank.com/challenges/30-running-time-and-complexity/problem
require 'pry'

def prime_or_not(data)
  return 'Not prime' if data == 1

  ctr = 2
  prime = true
  remainder = nil

  while remainder != 0 && ctr * ctr <= data
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

# ruby day_25_prime_numbers.rb
# 3
# 12

# Not prime

# 5

# Prime

# 7

# Prime

# ruby day_25_prime_numbers.rb
# 2

# 31

# Prime

# 33

# Not prime

# ruby day_25_prime_numbers.rb
# 1
# 1

# Not prime

# ruby day_25_prime_numbers.rb
# 20
# 121

# Not prime

# 144

# Not prime

# 169

# Not prime

# 196

# Not prime

# 225

# Not prime

# 256

# Not prime

# 289

# Not prime

# 324

# Not prime

# 361

# Not prime

# 400

# Not prime

# 441

# Not prime

# 484

# Not prime

# 529

# Not prime

# 576

# Not prime

# 625

# Not prime

# 676

# Not prime

# 729

# Not prime

# 784

# Not prime

# 841

# Not prime

# 907

# Prime
