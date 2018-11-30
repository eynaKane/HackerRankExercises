# https://www.hackerrank.com/challenges/ruby-hash-initialization/problem
require 'pry'

@_binding = binding
def show_output(p, b = @_binding)
  # rubocop:disable Security/Eval
  eval("
    local_variables.each do |v|
      if eval(v.to_s + \".object_id\") == " + p.object_id.to_s + "
        var = v.to_s
        val = eval(var)
        default = val.default ? val.default.to_s : 'nil'

        puts 'variable named ' + var + ' is defined!'
        puts var + ' variable belongs to the class `'\
          + val.class.to_s + '`!'
        puts var + ' is of size ' + val.size.to_s + '!' if val.size.zero?
        puts var + ' default value is ' + default + '!'
        unless val.size.zero?
          print_key_value_pair(var, val)
          puts var + ' key value pair size is ' + val.size.to_s
        end
      end
    end
  ", b)
  # rubocop:enable Security/Eval
end

def print_key_value_pair(var, val)
  val.each do |k, v|
    puts var + ' has a key named `' + k.to_s + '`!'
    puts var + '[\"' + k.to_s + '\"] = ' + v.to_s
  end
end

empty_hash = {}
default_hash = Hash.new(1)
hackerrank = { 'simmy' => 100, 'vivmbbs' => 200 }

show_output(empty_hash)
show_output(default_hash)
show_output(hackerrank)

# ruby ruby_15_initialization_hash.rb

# variable named empty_hash is defined!
# empty_hash variable belongs to the class `Hash`!
# empty_hash is of size 0!
# empty_hash default value is nil!
# variable named default_hash is defined!
# default_hash variable belongs to the class `Hash`!
# default_hash is of size 0!
# default_hash default value is 1!
# variable named hackerrank is defined!
# hackerrank variable belongs to the class `Hash`!
# hackerrank default value is nil!
# hackerrank has a key named `simmy`!
# hackerrank[\"simmy\"] = 100
# hackerrank has a key named `vivmbbs`!
# hackerrank[\"vivmbbs\"] = 200
# hackerrank key value pair size is 2
