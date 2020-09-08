=begin

Exclusive Or

The || operator returns a truthy value if either or both of its operands are truthy, 
a falsey value if both operands are falsey. 
The && operator returns a truthy value if both of its operands are truthy, 
and a falsey value if either operand is falsey. 
This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a method named xor that takes two arguments, 
and returns true if exactly one of its arguments is truthy, false otherwise.

Examples:

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

1. Understanding the Problem:

- questions: 
  - How do values other than booleans behave when they are operated with logical and and or?
  - Should I first evalute the truthiness of the inputs and convert them to actual booleans using double bangs?
  - Apparently, this is not needed. I can use any type of variable with and/or operations and the result will always be a boolean.
- input: 2 inputs of any type
- output: true/false

- rules:
  - xor returns true if exactly one argument is true, and false otherwise
  
    true xor true = false 
    true xor false = true 
    false xor true = true
    false xor false = false

2. Examples / Test Cases: as given above.

3. Data Structure: boolean

4. Algorithm:

- define a method named "xor?" that takes 2 parameters
- check this condition (a == true and b == true) or (a == false and b == false)
  - return false
- else
  - return true


5. Code:

=end

def xor?(a, b)
  # if (a == true && b == true) || (a == false && b == false)
  #   false
  # else
  #   true
  # end

  !((a && b) || (!a && !b))
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false