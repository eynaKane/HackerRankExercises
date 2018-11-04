# https://www.hackerrank.com/challenges/electronics-shop/problem
require 'pry'

def get_money_spent(keyboards, drives, b)
  highest = -1

  keyboards.map do |keyboard|
    drives.map do |drive|
      temp = keyboard + drive
      highest = temp if temp <= b && temp > highest
    end
  end

  highest
end

bnm = gets.rstrip.split

b = bnm[0].to_i # budget

keyboards = gets.rstrip.split(' ').map(&:to_i)

drives = gets.rstrip.split(' ').map(&:to_i)

money_spent = get_money_spent keyboards, drives, b

puts money_spent

# ruby electronics_shop.rb
# 10 2 3
# 3 1
# 5 2 8

# 9

# ruby electronics_shop.rb
# 5 1 1
# 4
# 5

# -1
