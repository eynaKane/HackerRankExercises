# https://www.hackerrank.com/challenges/ruby-enumerable-any-all-none-find/problem
require 'pry'

def func_any(hash)
  hash.any? do |key, _|
    key.is_a?(Integer)
  end
end

def func_all(hash)
  hash.all? do |_, value|
    value.is_a?(Integer) && value < 10
  end
end

def func_none(hash)
  hash.none? do |_, value|
    value.nil?
  end
end

def func_find(hash)
  hash.find do |key, value|
    (key.is_a?(Integer) && value.is_a?(Integer) && value < 20) ||
      (key.is_a?(String) && value.is_a?(String) && value.start_with?('a'))
  end
end

def yay_or_nay(yay)
  if yay
    'a'
  else
    'no'
  end
end

def yay_or_nay_for_all(yay)
  if yay
    'All'
  else
    'Not all'
  end
end

def yay_or_nay_for_none(yay)
  if yay
    'no'
  else
    'a'
  end
end

def print_hash(hash)
  puts

  hash.each do |k, v|
    print '{' + k.to_s + ': ' + v.to_s + '} '
  end

  puts
end

def print_func_any(result)
  text = yay_or_nay(result)

  puts 'ANY: There\'s ' + text + ' key, value pair where the key is an Integer.'
end

def print_func_all(result)
  text = yay_or_nay_for_all(result)

  puts 'ALL: ' + text + ' key, value pairs have Integer value less than 10.'
end

def print_func_none(result)
  text = yay_or_nay_for_none(result)

  puts 'NONE: There\'s ' + text + ' key, value pair where the value is nil.'
end

def print_func_find(result)
  text = yay_or_nay(result)

  puts 'FIND: There\'s ' + text + ' key, value pair that satisfies either...'
  puts 'where key and value are both integers and value is less than 20'
  puts 'OR where key and value are both strings and value starts with an `a`.'
end

hash = { 1 => 'one', 'two' => 2 }
print_hash(hash)
print_func_any(func_any(hash))

hash = { 'one' => 1, 'two' => 2 }
print_hash(hash)
print_func_any(func_any(hash))

hash = { 'one' => 1, 'two' => 2 }
print_hash(hash)
print_func_all(func_all(hash))

hash = { 'one' => 1, 'ten' => 10 }
print_hash(hash)
print_func_all(func_all(hash))

hash = { 'one' => 1, 'nil' => nil }
print_hash(hash)
print_func_none(func_none(hash))

hash = { 1 => 1, 'two' => 2 }
print_hash(hash)
print_func_none(func_none(hash))

hash = { 1 => 1, 'two' => 2 }
print_hash(hash)
print_func_find(func_none(hash))

hash = { 'one' => 'a', 'two' => 'b' }
print_hash(hash)
print_func_find(func_find(hash))

hash = { 'one' => 1, 'two' => 2 }
print_hash(hash)
print_func_find(func_find(hash))

# ruby ruby_22_any_all_none_enumerable.rb

# {1: one} {two: 2}
# ANY: There's a key, value pair where the key is an Integer.

# {one: 1} {two: 2}
# ANY: There's no key, value pair where the key is an Integer.

# {one: 1} {two: 2}
# ALL: All key, value pairs have Integer value less than 10.

# {one: 1} {ten: 10}
# ALL: Not all key, value pairs have Integer value less than 10.

# {one: 1} {nil: }
# NONE: There's a key, value pair where the value is nil.

# {1: 1} {two: 2}
# NONE: There's no key, value pair where the value is nil.

# {1: 1} {two: 2}
# FIND: There's a key, value pair that satisfies either...
# where key and value are both integers and value is less than 20
# OR where key and value are both strings and value starts with an `a`.

# {one: a} {two: b}
# FIND: There's a key, value pair that satisfies either...
# where key and value are both integers and value is less than 20
# OR where key and value are both strings and value starts with an `a`.

# {one: 1} {two: 2}
# FIND: There's no key, value pair that satisfies either...
# where key and value are both integers and value is less than 20
# OR where key and value are both strings and value starts with an `a`.
