# https://www.hackerrank.com/challenges/ruby-enumerable-collect/problem
require 'pry'

def decipher_messages(secret_messages)
  secret_messages.map do |string|
    print_message(string, true)
    new_string = []

    string.split(//).each do |char|
      new_string << decipher_character(char)
    end

    print_message(new_string.join, false)
    new_string.join
  end
end

def decipher_character(char)
  return ' ' if char == ' '

  rot13 = { 'a' => 'n', 'b' => 'o', 'c' => 'p',
            'd' => 'q', 'e' => 'r', 'f' => 's',
            'g' => 't', 'h' => 'u', 'i' => 'v',
            'j' => 'w', 'k' => 'x', 'l' => 'y',
            'm' => 'z', 'n' => 'a', 'o' => 'b',
            'p' => 'c', 'q' => 'd', 'r' => 'e',
            's' => 'f', 't' => 'g', 'u' => 'h',
            'v' => 'i', 'w' => 'j', 'x' => 'k',
            'y' => 'l', 'z' => 'm' }

  secret_char = rot13[char.downcase]

  if uppercase?(char)
    secret_char.upcase
  else
    secret_char
  end
end

def uppercase?(char)
  /[[:upper:]]/ =~ char ? true : false
end

def print_message(message, secret)
  if secret
    print 'Secret message: '
  else
    print 'Deciphered msg: '
  end

  puts message
end

secret_messages = [
  'qrygn',
  'zrrg ng pubpbyngr pbeare',
  'gra zra',
  'gjb onpxhc grnzf',
  'zvqavtug rkgenpgvba'
]

decipher_messages(secret_messages)

puts "\nYay! You succesfully completed the map challenge."

# ruby ruby_20_collect_enumerable.rb

# Secret message: qrygn
# Deciphered msg: delta
# Secret message: zrrg ng pubpbyngr pbeare
# Deciphered msg: meet at chocolate corner
# Secret message: gra zra
# Deciphered msg: ten men
# Secret message: gjb onpxhc grnzf
# Deciphered msg: two backup teams
# Secret message: zvqavtug rkgenpgvba
# Deciphered msg: midnight extraction

# Yay! You succesfully completed the map challenge.
