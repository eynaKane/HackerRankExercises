#!/bin/ruby

require 'json'
require 'stringio'
require 'pry'

# Complete the breakingRecords function below.
def breakingRecords(scores)
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

result = breakingRecords scores

puts result.join " "
