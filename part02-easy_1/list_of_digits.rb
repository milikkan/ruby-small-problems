=begin

List of Digits
Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

Examples:

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

- input: positive integer
- output: an array of digits

- rules
  explicit:
    the returned array will consist of individual digits of the number

Algorithm

- define a method "digit_list" that take an integer argument called "number"
- convert number to string and assign it to "number_str"
- split string characters of "number_str" into an array (can use String#chars or String#split)
    and assign the result to "digits_str" array
- using Array#map iterate over the "digits_str" array
    convert each item to integer (can use String#to_i)
- return the result of map (can return implicitly)

=end

# first solution
# def digit_list(number)
#   # number_str = number.to_s
#   # digits_str = number_str.chars
#   # digits_str.map {|digit| digit.to_i }

#   number.to_s.chars.map { |digit| digit.to_i }
# end

# second solution
# def digit_list(number)
#   digits = []
#   loop do 
#     number, remainder = number.divmod(10)
#     digits << remainder
#     break if number.zero?
#   end
#   digits.reverse
# end

# third solution
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

p digit_list(12345) == [1, 2, 3, 4, 5]
p digit_list(7) == [7]
p digit_list(375290) == [3, 7, 5, 2, 9, 0]
p digit_list(444) == [4, 4, 4]