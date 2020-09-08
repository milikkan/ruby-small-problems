=begin

Even Numbers

Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

1. Understanding the Problem:

- questions: none
- input: none
- output: even numbers between 1 and 99

- rules:
  check each number and print if it is even

2. Examples / Test Cases:

2 4 6 8 ...... 98 (each number on seperate line)

3. Data Structure: number

4. Algorithm:

- create a variable named "count" and initialize it to 1
- start a loop that will run as long as the "count" less than 99
  - print count if it is even
  - increment count by 1

5. Code:

=end

count = 1

loop do
  break unless count < 99
  puts count if count.even?
  count += 1
end