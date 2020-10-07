=begin
Multiplying Two Numbers

Create a method that takes two arguments, multiplies them together, and returns the result.

Example:

multiply(5, 3) == 15

- input: 2 numbers
- output: multiplaction of the inputs

- rules
  explicit: take the numbers and return the result of their multiplacation
  implicit: assume inputs are integer

- Algorithm:

- define a method "multiply" that take "num1" and "num2" as parameters
- multiply the inputs and return

=end

def multiply(num1, num2)
  num1 * num2
end

p multiply(5, 3) == 15