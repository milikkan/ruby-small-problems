# Squaring an Argument 
# Further Exploration

# What if we wanted to generalize this method to a "power to the n" type method: 
# cubed, to the 4th power, to the 5th, etc. 
# How would we go about doing so while still using the multiply method?

def multiply(num1, num2)
  num1 * num2
end

# raise the num to the power
# doesn't work with negative integers
def power_to_number(num, power)
  result = 1
  power.times { result = multiply(result, num) }
  result
end

p power_to_number(2, 3) == 8
p power_to_number(4, 3) == 64
p power_to_number(-5, 4) == 625
p power_to_number(4, 0) == 1
p power_to_number(3, -2) == 1