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

# ruby day_28_regex_pattern.rb
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

# ruby day_28_regex_pattern.rb
# 30
# riya riya@gmail.com
# julia julia@julia.me
# julia sjulia@gmail.com
# julia julia@gmail.com
# samantha samantha@gmail.com
# tanya tanya@gmail.com
# riya ariya@gmail.com
# julia bjulia@julia.me
# julia csjulia@gmail.com
# julia djulia@gmail.com
# samantha esamantha@gmail.com
# tanya ftanya@gmail.com
# riya riya@live.com
# julia julia@live.com
# julia sjulia@live.com
# julia julia@live.com
# samantha samantha@live.com
# tanya tanya@live.com
# riya ariya@live.com
# julia bjulia@live.com
# julia csjulia@live.com
# julia djulia@live.com
# samantha esamantha@live.com
# tanya ftanya@live.com
# riya gmail@riya.com
# priya priya@gmail.com
# preeti preeti@gmail.com
# alice alice@alicegmail.com
# alice alice@gmail.com
# alice gmail.alice@gmail.com

# alice
# alice
# julia
# julia
# julia
# julia
# preeti
# priya
# riya
# riya
# samantha
# samantha
# tanya
# tanya
