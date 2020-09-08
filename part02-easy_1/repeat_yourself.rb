# Repeat Yourself

# Write a method that takes two arguments, a string and a positive integer, and prints the string 
# as many times as the integer indicates.

# Example:

# repeat('Hello', 3)
# Output:

# Hello
# Hello
# Hello

=begin

1. Understanding the Problem

- questions: What should the method print if empty string is given? Nothing or number of times empty lines?

- input: a string, a positive integer
- output: a string

- rules: 
  explicit:
    the input string will be printed the number of times the second parameter indicates
    every output will be on a seperate line
  implicit:
    method doesn't return any value, just prints some string
    when empty string is given, method will print integer number of times blank lines

2. Examples / Test Cases

  repeat('ruby', 1) => ruby
  repeat('a', 5) => a(new line) a(new line) a(new line) a(new line) a(new line)
  repeat('', 2) => ''

3. Data Structure: number

4. Algorithm

  - define method "repeat" that takes arguments named "str" and "num"
  - define a loop that loops "num" number of times (can use Integer#times)
      print the "str" in every iteration
  - end the method

5. Code

=end

def repeat(str, num)
  num.times { |_| puts str }
end

repeat('Hello', 3)
