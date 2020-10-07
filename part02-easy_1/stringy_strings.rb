=begin

Stringy Strings
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, 
always starting with 1. The length of the string should match the given integer.

Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

- input: a positive integer
- output: a string

- rules
  explicit:
    - Input will be a positive integer, no negative or 0
    - The result will start with 1 and will continue alternating between 0 and 1
    - The length of the result will be equal to the input number

- Algorithm

  - define method "stringy" that takes "num" as parameter
  - define variable "count" and initialize it to 0
  - define variable "result" and initialize it to '' (empty string)
  - define a loop that will continue as long as "count" is not equal to "num"
    - create variable "next_char" and set it to "1" if count is even, to "0" otherwise
    - append "next_char" to "result"
    - increment "count" by 1
  - return result

=end

# def stringy(num)
#   count = 0
#   result = ''
#   loop do
#     break if count == num
#     count.even? ? next_char = '1' : next_char = '0'
#     result << next_char
#     count += 1
#   end
#   result
# end

# shorter version using Integer#times
# def stringy(num)
#   result = ''
#   num.times do |i|
#     i.even? ? next_char = '1' : next_char = '0'
#     result << next_char
#   end
#   result
# end

def stringy(num)
  (1..num).map { |idx| idx.odd? ? '1' : '0' }.join
end

p stringy(6) == '101010'
p stringy(9) == '101010101'
p stringy(4) == '1010'
p stringy(7) == '1010101'