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
  if power > 0
    power.times { result = multiply(result, num) }
  end
  result
end