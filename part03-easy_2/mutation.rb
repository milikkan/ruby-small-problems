# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# prints

# Moe 
# Larry 
# CURLY 
# SHEMP 
# Harpo 
# CHICO 
# Groucho 
# Zeppo

# Reason: array1 and array2 are different objects but they contain variables that reference
# the same string objects after line 5 executes. The shovel operator inside the each loop
# pushes each value from array1 to array2. But behind the scenes, it pushes references to these 
# string objects. Because in Ruby, all variables are just references to objects.
# When the strings in array1 that start with letters 'C' or 'S' are uppercased using the mutating
# upcase! method, the operation is conducted in place. Thus, the changes are reflected by the array2.

# to avoid this result, we need to put different (same value but different memory address) objects in array2.

# array2 = []
# array1.each { |value| array2.push(String.new(value)) }
# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# p array1
# p array2