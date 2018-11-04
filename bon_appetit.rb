# https://www.hackerrank.com/challenges/bon-appetit/problem
require 'json'
require 'stringio'

def bon_appetit(bill, k, b)
  bill.delete_at(k)
  split = bill.sum / 2

  if split == b
    puts 'Bon Appetit'
  else
    puts b - split
  end
end

nk = gets.rstrip.split

k = nk[1].to_i

bill = gets.rstrip.split.map(&:to_i)

b = gets.strip.to_i

bon_appetit bill, k, b

# ruby bon_appetit.rb
# 4 1
# 3 10 2 9
# 7

# Bon Appetit

# ruby bon_appetit.rb
# 4 1
# 3 10 2 9
# 12

# 5
