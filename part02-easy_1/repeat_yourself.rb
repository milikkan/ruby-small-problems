# Repeat Yourself

# Write a method that takes two arguments, a string and a positive integer, and prints the string 
# as many times as the integer indicates.

# Example:

# repeat('Hello', 3)
# Output:

# Hello
# Hello
# Hello

# def repeat(str, num)
#   num.times { |_| puts str }
# end

def repeat(str, num)
  puts format("%s\n", str) * num
end

repeat('Hello', 3)
