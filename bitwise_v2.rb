# https://www.hackerrank.com/challenges/30-bitwise-and/problem
require 'json'
require 'stringio'
require 'pry'

def get_bitwise_and(tests, t)
  ctr1 = t - 1
  binaries = {}

  while ctr1 >= 1
    binary1 = convert_decimal_to_binary(ctr1)
    binaries = { ctr1 => binary1 }
    ctr2 = t

    while ctr2 > ctr1
      binary2 = binaries[ctr2] || convert_decimal_to_binary(ctr2)

      result = perform_bitwise_and(binary1, binary2)

      tests = apply_result(tests, result, ctr1, ctr2)

      ctr2 -= 1
    end

    ctr1 -= 1
  end

  tests
end

def convert_decimal_to_binary(n)
  num = n
  binary = ''

  while num != 0
    binary += (num % 2).to_s
    num /= 2
  end

  binary
end

def convert_binary_to_decimal(binary)
  ctr = 0
  sum = 0

  until binary[ctr].nil?
    sum += 2**ctr if binary[ctr] == '1'
    ctr += 1
  end

  sum
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

def apply_result(tests, result, ctr1, ctr2)
  tests.each do |k, v|
    if result < v[1] && result > v[2] && ctr1 <= v[0] && ctr2 <= v[0]
      tests[k][2] = result
    end
  end

  tests
end

t = gets.to_i
max_n = 0
tests = {}

t.times do |index|
  nk = gets.rstrip.split

  n = nk[0].to_i
  k = nk[1].to_i

  max_n = n if n > max_n
  tests[index] = [n, k, 0]
end

results = get_bitwise_and(tests, max_n)

results.values.each do |result|
  puts result[2]
end

# ruby bitwise_v2.rb
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

# ruby bitwise_v2.rb
# 3
# 5 2
# 8 5
# 2 2

# 1
# 4
# 0

# ruby bitwise_v2.rb
# 2
# 9 2
# 8 3

# 1
# 2

# ruby bitwise_v2.rb
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
