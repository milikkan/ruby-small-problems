=begin

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

Examples

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

algortihm:
- if the number is negative, make it positive and set negative flag to true
- convert number to string
- if number is 0 do nothing
- if negative flag is true, prepend '-' to the string  
- else prepend '+'

example:
- 4321 -> negative = false -> convert -> "4321" -> not 0, negative is false -> prepend + 
- -123 -> negative = true -> make positive and convert -> "123" -> "-123"

=end

def generate_key
  result = {}
  str = "0123456789"
  (0..9).each { |num| result[num] = str[num] }
  result
end

def seperate_into_digits(num)
  digits = []
  loop do
    result, remainder = num.divmod(10)
    digits << remainder
    break digits if result == 0
    num = result
  end
end

def integer_to_string(num)
  hsh = generate_key
  digits = seperate_into_digits(num)
  digits.reverse.map { |digit| hsh[digit] }.join
end

def signed_integer_to_string(num)
  negative = false
  if num < 0 
    num = -num
    negative = true
  end
  num_str = integer_to_string(num)
  num_str.prepend('-') if negative
  num_str.prepend('+') if !negative && num_str != "0"
  num_str
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'