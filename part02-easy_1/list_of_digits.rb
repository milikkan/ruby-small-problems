=begin

List of Digits
Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

Examples:

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

1. Understanding the Problem

- questions: none

- input: positive integer
- output: an array of digits

- rules
  explicit:
    the returned array will consist of individual digits of the number

2. Examples / Test Cases: given in the problem statement

3. Data Structure: string

4. Algorithm

- define a method "digit_list" that take an integer argument called "number"
- convert number to string and assign it to "number_str"
- split string characters of "number_str" into an array (can use String#chars or String#split)
    and assign the result to "digits_str" array
- using Array#map iterate over the "digits_str" array
    convert each item to integer (can use String#to_i)
- return the result of map (can return implicitly)

5. Code

=end

def digit_list(number)
  # number_str = number.to_s
  # digits_str = number_str.chars
  # digits_str.map {|digit| digit.to_i }

  number.to_s.chars.map { |digit| digit.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true