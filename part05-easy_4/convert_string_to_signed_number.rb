=begin

  Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

  You may assume the string will always contain a valid number.
  
  You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.
  
  Examples
  
  string_to_signed_integer('4321') == 4321
  string_to_signed_integer('-570') == -570
  string_to_signed_integer('+100') == 100

rules:
* string may have a sign or not
* if no sign given, return a positive number
* input always will be valid

algorithm:
1. check the first digit, it may be +. - or something else
   a. if it is + or -, slice the remaining,
      - set sign variable to +1 or -1 depending on the sign
      - call convert method on sliced string
      - multiply converted integer with the sign variable
   b. if it is not a sign call convert method

example:
- "4321" -> first digit is "4" -> convert directly
- "-570" -> first digit -, sign = -1, str.slice(1, str.length - 1) = "570", covert("570"), multiply by sign -> -570
=end

def generate_digits_hash
  result = {}
  num = 0
  "0123456789".chars.each do |ch|
    result[ch] = num
    num += 1
  end
  result
end

def string_to_integer(str)
  digits_hash = generate_digits_hash
  digits = str.chars.map { |ch| digits_hash[ch] }
  
  number = 0
  multiplier = 0
  loop do
    number += digits.pop * (10 ** multiplier)
    multiplier += 1
    break number if digits.empty?
  end
end

def string_to_signed_integer(str)
  sign = str[0]
  if sign == '+' || sign == '-'
    str = str.slice(1, str.size - 1)
  end
  result = string_to_integer(str)
  sign == '-' ? -result : result
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100