=begin

Odd Numbers

Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

1. Understanding the Problem:

- questions: none
- input: none
- output: odd numbers between 1 and 99

- rules:
  check each number and print if it is odd

2. Examples / Test Cases:

1 3 5 ..... 99 (each number on new line)

3. Data Structure: number

4. Algorithm:

- start a loop that will run from 1 upto 99 (can use Integer#upto)
- At each iteration
   - check if the number is odd
   - print the number if so

5. Code:

=end

1.upto(99) do |num|
  puts num if num.odd?
end