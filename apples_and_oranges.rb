require 'json'
require 'stringio'

def count_apple_orange(s, t, a, b, apples, oranges)
  apple_ctr = 0
  orange_ctr = 0

  apples.each do |apple|
    location = a + apple
    apple_ctr += 1 if location >= s && location <= t
  end

  oranges.each do |orange|
    location = b + orange
    orange_ctr += 1 if location >= s && location <= t
  end

  puts apple_ctr
  puts orange_ctr
end

st = gets.rstrip.split

s = st[0].to_i # range start

t = st[1].to_i # range end

ab = gets.rstrip.split

a = ab[0].to_i # location of apple

b = ab[1].to_i # location of orange

apples = gets.rstrip.split(' ').map(&:to_i)

oranges = gets.rstrip.split(' ').map(&:to_i)

count_apple_orange(s, t, a, b, apples, oranges)

# ruby apples_and_oranges.rb
# 7 11
# 5 15
# -2 2 1
# 5 -6

# 1
# 1
