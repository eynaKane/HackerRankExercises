# https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem
require 'json'
require 'stringio'

def jumping_on_clouds(c)
  n = c.count
  ctr = 0
  result = 0

  while ctr < n
    if c[ctr] == c[ctr + 2]
      result += 1
      ctr += 2
    elsif c[ctr] == c[ctr + 1]
      result += 1
      ctr += 1
    else
      return result
    end
  end

  result
end

c = gets.rstrip.split(' ').map(&:to_i)

result = jumping_on_clouds c

puts result

# ruby clouds.rb
# 0 0 0 0 1 0

# 3

# ruby clouds.rb
# 0 0 1 0 0 1 0

# 4
