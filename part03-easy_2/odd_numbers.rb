=begin
Odd Numbers

Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

- input: none
- output: odd numbers between 1 and 99

- rules:
  check each number and print if it is odd

- Algorithm:

- start a loop that will run from 1 upto 99 (can use Integer#upto)
- At each iteration
   - check if the number is odd
   - print the number if so

=end

# 1.upto(99) do |num|
#   puts num if num.odd?
# end

puts (1..99).select { |n| n.odd? }
