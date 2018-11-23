# https://www.hackerrank.com/challenges/30-bitwise-and/problem
require 'json'
require 'stringio'
require 'pry'

def get_max_bitwise_and(n, k)
  k1 = get_binary(k)
  k2 = get_binary(k - 1)

  return k - 1 if perform_bitwise_or(k1, k2) <= n

  k - 2
end

def perform_bitwise_or(a, b)
  ctr = 0
  result = ''

  until a[ctr].nil? && b[ctr].nil?
    result += if a[ctr] == '1' || b[ctr] == '1'
                '1'
              else
                '0'
              end

    ctr += 1
  end

  get_decimal(result)
end

def perform_bitwise_and(a, b)
  ctr = 0
  binary = ''

  until a[ctr].nil? || b[ctr].nil?
    binary += (a[ctr].to_i * b[ctr].to_i).to_s
    ctr += 1
  end

  convert_binary_to_decimal(binary)
end

def get_binary(decimal)
  binary = ''

  while decimal != 0
    binary += (decimal % 2).to_s
    decimal /= 2
  end

  binary
end

def get_decimal(binary)
  ctr = 0
  sum = 0

  until binary[ctr].nil?
    sum += 2**ctr if binary[ctr] == '1'
    ctr += 1
  end

  sum
end

t = gets.to_i
results = []

t.times do
  nk = gets.rstrip.split

  n = nk[0].to_i
  k = nk[1].to_i

  results << if k.odd?
               k - 1
             else
               get_max_bitwise_and(n, k)
             end
end

results.each do |result|
  puts result
end

# ruby bitwise.rb
# 5
# 955 236
# 132 107
# 178 104
# 394 378
# 773 29

# 235
# 106
# 103
# 377
# 28

# ruby bitwise.rb
# 3
# 5 2
# 8 5
# 2 2

# 1
# 4
# 0

# ruby bitwise.rb
# 2
# 9 2
# 8 3

# 1
# 2

# ruby bitwise.rb
# 5
# 840 416
# 165 114
# 512 107
# 123 68
# 298 86

# 415
# 113
# 106
# 67
# 85
