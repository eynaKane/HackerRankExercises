# https://www.hackerrank.com/challenges/ruby-strings-introduction/problem
def single_quote
  'Hello World and others!'
end

def double_quote
  "Hello World and others!"
end

def here_doc
  <<~HERE
  Hello World and others!
  HERE
end

puts single_quote
puts double_quote
puts here_doc

# ruby ruby_34_strings.rb

# Hello World and others!
# Hello World and others!
# Hello World and others!
