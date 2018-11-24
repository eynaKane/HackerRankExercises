# https://www.hackerrank.com/challenges/30-2d-arrays/problem
require 'json'
require 'stringio'
require 'pry'

def get_hourglasses(arr)
  ctr = 0
  groups = {}

  while ctr < 4
    h = 0

    while h < 4
      location = "#{ctr}#{h}"
      groups[location] = []

      # GET HOURGLASS
      groups[location] += arr[ctr][h..h + 2]
      groups[location] += [arr[ctr + 1][h + 1]]
      groups[location] += arr[ctr + 2][h..h + 2]

      h += 1
    end

    ctr += 1
  end

  groups
end

def print_largest_sum(groups)
  highest = nil

  groups.values.map do |group|
    highest = group.sum if highest.nil? || group.sum > highest
  end

  puts highest
end

arr = Array.new(6)

6.times do |i|
  arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

groups = get_hourglasses(arr)

print_largest_sum(groups)

# ruby day_11_hourglass.rb
# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 2 4 4 0
# 0 0 0 2 0 0
# 0 0 1 2 4 0

# 19

# ruby day_11_hourglass.rb
# -1 -1 0 -9 -2 -2
# -2 -1 -6 -8 -2 -5
# -1 -1 -1 -2 -3 -4
# -1 -9 -2 -4 -4 -5
# -7 -3 -3 -2 -9 -9
# -1 -3 -1 -2 -4 -5

# -6
