# https://www.hackerrank.com/challenges/30-sorting/problem
require 'pry'

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

temp = 0
swap_ctr = 0

n.times do
  (n - 1).times do |ctr|
    next unless a[ctr] > a[ctr + 1]

    temp = a[ctr]
    a[ctr] = a[ctr + 1]
    a[ctr + 1] = temp
    swap_ctr += 1
  end
end

puts "Array is sorted in #{swap_ctr} swaps."
puts "First Element: #{a.first}"
puts "Last Element: #{a.last}"

# ruby bubble_sort.rb
# 3
# 1 2 3

# Array is sorted in 0 swaps.
# First Element: 1
# Last Element: 3

# ruby bubble_sort.rb
# 3
# 3 2 1

# Array is sorted in 3 swaps.
# First Element: 1
# Last Element: 3
