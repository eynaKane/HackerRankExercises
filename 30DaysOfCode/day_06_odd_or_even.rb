# https://www.hackerrank.com/challenges/30-review-loop/problem
def get_odd_even(value)
  even = ''
  odd = ''

  value.split(//).each_with_index do |v, i|
    if i.even?
      even += v
    else
      odd += v
    end
  end

  even + ' ' + odd
end

n = gets.to_i

result = []

n.times do |i|
  value = gets.rstrip
  result[i] = get_odd_even(value)
end

result.map { |r| puts r }

# ruby day_06_odd_or_even.rb
# 2
# Hacker
# Rank

# Hce akr
# Rn ak
