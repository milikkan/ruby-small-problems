=begin

Multiples of 3 and 5

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, 
and then computes the sum of those multiples. 
For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168


1. Understanding the Problem:

- input: a positive integer
- output: an integer

- rules:
  - iterate from 1 upto the input
  - detect multiples of 3 or 5
  - sum the multiples and return
  - input is a positive integer, no validation needed


2. Examples / Test Cases:

multisum(1) == 0
multisum(2) == 0
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(20) == 98
multisum(1000) == 234168

3. Data Structure: number

4. Algorithm:

- define the method named multisum that takes an int parameter named "input"
- define "sum" variable and initialize it to 0
- iterate starting from 1 upto "input"
  - name block variable as "num"
  - check if "num" is divisible by 3 or 5
  - if it is, add "num" to "sum"
- return "sum"

5. Code:

=end

def multisum(input)
  sum = 0
  1.upto(input) do |num|
    if num % 3 == 0 || num % 5 == 0
      sum += num
    end
  end
  sum
end

p multisum(1) == 0
p multisum(2) == 0
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(20) == 98
p multisum(1000) == 234168