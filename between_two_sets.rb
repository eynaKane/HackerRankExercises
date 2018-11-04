# https://www.hackerrank.com/challenges/between-two-sets/problem
require 'pry'

def get_total_x(a, b)
  a = a.sort
  b = b.sort
  result = []
  abort = false

  (a.last..b.first).each do |num|
    a.map do |a_num|
      abort = num % a_num != 0
      break if abort
    end

    unless abort
      b.map do |b_num|
        abort = b_num % num != 0
        break if abort
      end
    end

    result << num unless abort
  end

  result.count
end

a = gets.rstrip.split(' ').map(&:to_i)

b = gets.rstrip.split(' ').map(&:to_i)

total = get_total_x a, b

puts total

# ruby between_two_sets.rb
# 2 4
# 16 32 96

# 3
