=begin

The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

Examples

string_to_integer('4321') == 4321
string_to_integer('570') == 570

- input: string (represents digits)
- output: integer

- rules:
  * all characters will be numeric, no illegal chars
  * don't consider - or + signs
  * don't use to_i method or Integer()
  * convert the string to integer by analyzing the chars

a hash of digits {"1": 1, "2": 2, "3": 3 ..etc}

- algorithm:
  1. convert input to a char array
  2. map the char array to a digits array by looking up the char from the digits_hash
  3. calculate the integer using the digits array
     a. pop digits one by one until none left
     b. multiplying each digit with the powers of 10 starting from 0
     c. Increment power of 10 by 1
     d. sum the multiples

- example:
  * "4321" -> ["4", "3", "2", "1"] -> [4, 3, 2, 1] -> (1 * 10^0) + (2 * 10^1) + (3 * 10^2) + (4 * 10^3) = 1 + 20 + 300 + 4000 = 4321 

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

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570