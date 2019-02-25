# https://www.hackerrank.com/challenges/ruby-strings-introduction/problem
def single_quote
  'Hello World and others!'
end

# rubocop:disable Style/StringLiterals
def double_quote
  "Hello World and others!"
end
# rubocop:enable Style/StringLiterals

def here_doc
  <<-HEREDOC
  Hello World and others!
  HEREDOC
end

puts single_quote
puts double_quote
puts here_doc

# ruby ruby_34_strings.rb

# Hello World and others!
# Hello World and others!
#   Hello World and others!
