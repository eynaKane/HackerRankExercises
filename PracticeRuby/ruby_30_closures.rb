# https://www.hackerrank.com/challenges/ruby-closures/problem
require 'pry'

def block_message_printer
  message = 'Welcome to Block Message Printer'
  yield if block_given?
  puts "But in this function/method message is :: #{message}"
end

def proc_message_printer(my_proc)
  message = 'Welcome to Proc Message Printer'
  my_proc.call
  puts "But in this function/method message is :: #{message}"
end

def lambda_message_printer(my_lambda)
  message = 'Welcome to Lambda Message Printer'
  my_lambda.call
  puts "But in this function/method message is :: #{message}"
end

message = gets

puts "\nNo Block given..."
block_message_printer

puts "\nHas Block given..."
block_message_printer { puts "This message remembers message :: #{message}" }

puts "\nProc..."
my_proc = proc { puts "This message remembers message :: #{message}" }
proc_message_printer(my_proc)

puts "\nLambda..."
my_lambda = -> { puts "This message remembers message :: #{message}" }
lambda_message_printer(my_lambda)

# ruby ruby_30_closures.rb
# Random Message

# No Block given...
# But in this function/method message is :: Welcome to Block Message Printer

# Has Block given...
# This message remembers message :: Random Message
# But in this function/method message is :: Welcome to Block Message Printer

# Proc...
# This message remembers message :: Random Message
# But in this function/method message is :: Welcome to Proc Message Printer

# Lambda...
# This message remembers message :: Random Message
# But in this function/method message is :: Welcome to Lambda Message Printer
