=begin

Running Totals

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, 
and each element has the running total from the original Array.

Examples:

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

1. Understanding the Problem:

- input: an array of numbers
- output: an array of numbers

- questions:
  - Are all numbers integers? (Does it matter in this case?)
  - Should I validate input?

- rules:
  explicit: 
    - return an array with the same size as input
    - every element at the output array should be the running total of previous elements plus itself
    - empty array returns empty array
    - one element array returns itself

2. Examples / Test Cases:

input: [2, 5, 13]  
output: [2, 
         2 + 5 = 7, 
         2 + 5 + 13 = 20]

3. Data Structure: array

4. Algorithm:

- define a method named "running_total" that takes an array named "input"
- define a variable "to_add" and initialize it to 0
- map over "input" 
  - name block variable as "item"
  - add "item" to "to_add"
  - assign the result to "to_add"
- return result

5. Code:

=end

def running_total(input)
  to_add = 0
  input.map { |item| to_add += item }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []