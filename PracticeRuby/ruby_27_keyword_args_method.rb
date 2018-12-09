# https://www.hackerrank.com/challenges/ruby-methods-keyword-arguments/problem
require 'pry'

def convert_temp(temp, input_scale: 'celsius', output_scale: 'celsius')
  if input_scale == 'celsius'
    celsius_converter(temp, output_scale)
  elsif input_scale == 'fahrenheit'
    fahrenheit_converter(temp, output_scale)
  elsif input_scale == 'kelvin'
    kelvin_converter(temp, output_scale)
  end
end

def celsius_converter(temp, output_scale)
  return celsius_to_fahrenheit(temp) if output_scale == 'fahrenheit'

  return celsius_to_kelvin(temp) if output_scale == 'kelvin'
end

def fahrenheit_converter(temp, output_scale)
  return fahrenheit_to_celsius(temp) if output_scale == 'celsius'

  return fahrenheit_to_kelvin(temp) if output_scale == 'kelvin'
end

def kelvin_converter(temp, output_scale)
  return kelvin_to_celsius(temp) if output_scale == 'celsius'

  return kelvin_to_fahrenheit(temp) if output_scale == 'fahrenheit'
end

def celsius_to_fahrenheit(temp)
  ((temp * 9 / 5) + 32).round(3)
end

def celsius_to_kelvin(temp)
  (temp + 273.15).round(3)
end

def fahrenheit_to_celsius(temp)
  ((temp - 32) * 5 / 9).round(3)
end

def fahrenheit_to_kelvin(temp)
  ((temp - 32) * 5 / 9 + 273.15).round(3)
end

def kelvin_to_celsius(temp)
  (temp - 273.15).round(3)
end

def kelvin_to_fahrenheit(temp)
  ((temp - 273.15) * 9 / 5 + 32).round(3)
end

def print_result(temp, result, input_scale = 'c', output_scale = 'c')
  format_temp = format '%.2f', temp
  format_result = format '%.3f', result
  puts "#{format_temp}#{input_scale[0].upcase}\t= "\
    "#{format_result}#{output_scale[0].upcase}"
end

temp = 0.0
out_scale = 'fahrenheit'
result = convert_temp(temp, output_scale: out_scale)
print_result(temp, result, out_scale)

temp = 0.0
out_scale = 'kelvin'
result = convert_temp(temp, output_scale: out_scale)
print_result(temp, result, out_scale)

temp = 32.0
in_scale = 'fahrenheit'
result = convert_temp(temp, input_scale: in_scale)
print_result(temp, result, in_scale)

temp = 0.0
in_scale = 'fahrenheit'
out_scale = 'kelvin'
result = convert_temp(temp, input_scale: in_scale, output_scale: out_scale)
print_result(temp, result, in_scale, out_scale)

temp = 273.15
in_scale = 'kelvin'
result = convert_temp(temp, input_scale: in_scale)
print_result(temp, result, in_scale)

temp = 255.37
in_scale = 'kelvin'
out_scale = 'fahrenheit'
result = convert_temp(temp, input_scale: in_scale, output_scale: out_scale)
print_result(temp, result, in_scale, out_scale)

# ruby ruby_27_keyword_args_method.rb

# 0.00C = 32.000F
# 0.00C = 273.150K
# 32.00F  = 0.000C
# 0.00F = 255.372K
# 273.15K = 0.000C
# 255.37K = -0.004F
