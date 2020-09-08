# What does this print out? Can you explain these results?

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# prints out
# BOB
# BOB

# Reason: When save_name is assigned the value of "name" at line 4, the two variables
# reference the same object. String#upcase! method on line 5 is a mutating method. 
# It changes the string in place. Because the two variables point to same 
# memory address, both are mutated and prints the same value.