=begin

What's my Bonus?

Write a method that takes two arguments, a positive integer and a boolean, 
and calculates the bonus for a given salary. 
If the boolean is true, the bonus should be half of the salary. 
If the boolean is false, the bonus should be 0.

Examples:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

The tests above should print true.

1. Understanding the Problem:

- questions:
  SHould I perform an integer division? SHould I account for a floating point result?

- input: a positive integer, a boolean
- output: an integer

- rules:
  explicit
    - first argument will be a positive integer
    - if the second argument is true, the half of the first paramater will be returned
    - if the second argument is false, 0 will be returned
  implicit:
    - I assumed that I will perform an integer division while calculating the bonusç

2. Examples / Test Cases: given in the problem statement

3. Data Structure: number

4. Algoritm:

- define method "calculate_bonus" that accepts "salary" and "bonus?" as parameters
- if bonus is true
    divide salary by 2 and return the result
  else
    return 0

5. Code

=end

def calculate_bonus(salary, bonus)
  if bonus
    salary / 2
  else
    0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000