# https://www.hackerrank.com/challenges/cats-and-a-mouse/problem
require 'json'
require 'stringio'

def cat_and_mouse(x, y, z)
  cat_a = (x - z).abs
  cat_b = (y - z).abs

  if cat_a < cat_b
    'Cat A'
  elsif cat_b < cat_a
    'Cat B'
  else
    'Mouse C'
  end
end

q = gets.to_i

q.times do
  xyz = gets.rstrip.split

  x = xyz[0].to_i

  y = xyz[1].to_i

  z = xyz[2].to_i

  result = cat_and_mouse x, y, z

  puts result
end

# ruby cat_and_mouse.rb
# 2
# 1 2 3
# Cat B

# 1 3 2
# Mouse C
