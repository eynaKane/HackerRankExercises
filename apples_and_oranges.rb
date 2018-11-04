#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countApplesAndOranges function below.
def countApplesAndOranges(s, t, a, b, apples, oranges)
  apple_ctr = 0
  orange_ctr = 0

  apples.each do |apple|
    location = a + apple
    apple_ctr += 1 if location >= s && location <= t
  end

  oranges.each do |orange|
    location = b + orange
    orange_ctr += 1 if location >= s && location <= t
  end

  puts apple_ctr
  puts orange_ctr
end

st = gets.rstrip.split

s = st[0].to_i # range start

t = st[1].to_i # range end

ab = gets.rstrip.split

a = ab[0].to_i # location of apple

b = ab[1].to_i # location of orange

mn = gets.rstrip.split

m = mn[0].to_i # num of apples

n = mn[1].to_i # num of oranges

apples = gets.rstrip.split(' ').map(&:to_i)

oranges = gets.rstrip.split(' ').map(&:to_i)

countApplesAndOranges s, t, a, b, apples, oranges
