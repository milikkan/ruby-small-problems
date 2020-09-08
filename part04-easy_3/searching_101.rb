=begin

Searching 101

Write a program that solicits 6 numbers from the user, then prints a message that 
describes whether or not the 6th number appears amongst the first 5 numbers.

Examples:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

1. Understanding the Problem:

- questions: 
  * Will the numbers be integers or floats?
  * Are negative numbers or 0 allowed?
  * Should I implement input validation logic?

- input: 6 numbers
- output: a string indicating whether the 6th number is among the first 5 or not

- rules
  explicit:
    - I will retrieve 6 inputs. 
        The first five will be prompted as 1st, 2nd, 3rd, 4th, 5th. 
        The 6th number will be prompted as "last"
    - I will save the first 5 numbers into an array
    - I will check the existence of the last number in the array
    - I will output the appropriate string depending on the result
  implicit:
    - I will not implement input validation
    - I assume that inputs are only positive integers

2. Examples / Test Cases: as given in the problem statement

3. Data Structure: array

4. Algortihm:

- initialize a variable "count" to 1
- initialize array "numbers" to empty array
- create a loop that will run 6 times (break condition: count is equal to 6)
    - form a prompt string depending on the value of count
        - use find_num_label method that accepts count as argument
    - prompt the user using this string (use puts)
    - get the input and convert it to int
    - push the input into "numbers" array
    - break loop if count equals to 6
    - increment count by 1
- assign the last array element to "num_to_check"
- slice and assign the first 5 elements of "numbers" array to "results" variable
- check the existence of "num_to_check" inside "results" (can use include?)
    - output the appropriate result string using puts and string interpolation

find_num_label method
---------------------
- define a method named find_num_label that takes an integer parameter "num"
- define a result variable and initalize it o empty string
- using a case/then structure, assign result
    - '1st' if num is 1
    - '2nd' if num is 2
    - '3rd' if num is 3
    - last if num is 6
    - num + 'th' if num is something else
- return result

5. Code:

=end

def find_num_label(num)
  result = ''

  result = case num
           when 1 then '1st'
           when 2 then '2nd'
           when 3 then '3rd'
           when 6 then 'last'
           else num.to_s + 'th'
  end

  result  
end

count = 1
numbers = []

loop do
  puts "==> Enter the #{find_num_label(count)} number:"
  input = gets.to_i
  numbers.push(input)
  break if count == 6
  count += 1
end

num_to_check = numbers[-1]
result = numbers[0, 5]
if result.include?(num_to_check)
  puts "The number #{num_to_check} appears in #{result}."
else
  puts "The number #{num_to_check} does not appear in #{result}."
end