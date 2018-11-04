# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
require 'json'
require 'stringio'
require 'pry'

def breaking_records(scores)
  high = low = scores.first
  max = min = 0

  scores.map do |score|
    if score > high
      high = score
      max += 1
    elsif score < low
      low = score
      min += 1
    end
  end

  [max, min]
end

scores = gets.rstrip.split(' ').map(&:to_i)

result = breaking_records scores

puts result.join(' ')

# ruby best_worst_records.rb
# 3 4 21 36 10 28 35 5 24 42

# 4 0
