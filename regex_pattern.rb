# https://www.hackerrank.com/challenges/30-regex-patterns/problem
require 'json'
require 'stringio'
require 'pry'

def gmail_account?(email)
  email.end_with? '@gmail.com'
end

N = gets.to_i

gmail_accounts = []

N.times do
  first_name_and_email = gets.rstrip.split
  first_name = first_name_and_email[0].to_s.rstrip
  email = first_name_and_email[1].to_s.rstrip

  gmail_accounts << first_name if gmail_account?(email)
end

gmail_accounts.sort.each do |gmail_account|
  puts gmail_account
end

# ruby regex_pattern.rb
# 6
# riya riya@gmail.com
# julia julia@julia.me
# julia sjulia@gmail.com
# julia julia@gmail.com
# samantha samantha@gmail.com
# tanya tanya@gmail.com

# julia
# julia
# riya
# samantha
# tanya
