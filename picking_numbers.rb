# https://www.hackerrank.com/challenges/picking-numbers/problem
require 'json'
require 'stringio'
require 'pry'

def picking_numbers(a)
  unique_numbers = a.uniq.sort!
  largest_group = 0

  unique_numbers.each_with_index do |num, i|
    next_num = unique_numbers[i + 1]

    ctr = a.select { |t| t == num }.count

    if next_num && (num - next_num).abs <= 1
      ctr += a.select { |t| t == next_num }.count
    end

    largest_group = ctr if ctr > largest_group
  end

  largest_group
end

a = gets.rstrip.split.map(&:to_i)

result = picking_numbers(a)

puts result

# ruby picking_numbers.rb
# 66 66 66 66 66 66 66 66 66 66

# 10

# ruby picking_numbers.rb
# 4 6 5 3 3 1

# 3
