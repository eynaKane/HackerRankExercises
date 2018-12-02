# https://www.hackerrank.com/challenges/ruby-enumerable-group-by/problem
require 'pry'

def group_by_marks(marks, pass_marks)
  result = marks.group_by do |mark|
    mark[1] >= pass_marks ? 'Passed' : 'Failed'
  end

  result.delete_if { |_, v| v.empty? }
end

def print_hash(hash)
  hash.each do |k, v|
    print '{' + k.to_s + ': ' + v.to_s + '} '
  end

  puts
end

def print_array(array)
  array.each do |arr|
    print '[' + arr[0].to_s + ': ' + arr[1].to_s + '] '
  end
end

def print_result(hash, passing_score)
  puts "\nPassing Score is #{passing_score}"

  hash.each do |k, v|
    print '{' + k.to_s + ': '
    print_array(v)
    puts '} '
  end
end

marks = { "Ramesh": 35, "Vivek": 40, "Harsh": 88, "Mohammad": 60 }
print 'GRADES: '
print_hash(marks)

passing_scores = [60, 90, 30]

passing_scores.each do |passing_score|
  result = group_by_marks(marks, passing_score)
  print_result(result, passing_score)
end

puts "\n" + 'Cool! You have completed the group_by challenge!'

# ruby ruby_23_group_by_enumerable.rb
# GRADES: {Ramesh: 35} {Vivek: 40} {Harsh: 88} {Mohammad: 60}

# Passing Score is 60
# {Failed: [Ramesh: 35] [Vivek: 40] }
# {Passed: [Harsh: 88] [Mohammad: 60] }

# Passing Score is 90
# {Failed: [Ramesh: 35] [Vivek: 40] [Harsh: 88] [Mohammad: 60] }

# Passing Score is 30
# {Passed: [Ramesh: 35] [Vivek: 40] [Harsh: 88] [Mohammad: 60] }

# Cool! You have completed the group_by challenge!
