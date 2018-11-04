# https://www.hackerrank.com/challenges/compare-the-triplets/problem
require 'json'
require 'stringio'

def compare_triplets(a, b)
  ctr = 0
  score = [0, 0]

  while ctr < 3
    if a[ctr] > b[ctr]
      score[0] += 1
    elsif a[ctr] < b[ctr]
      score[1] += 1
    end

    ctr += 1
  end

  score
end

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compare_triplets(a, b)

puts result.join(' ')

# ruby compare_the_triplets.rb
# 5 6 7
# 3 6 10

# 1 1

# ruby compare_the_triplets.rb
# 17 28 30
# 99 16 8

# 2 1
