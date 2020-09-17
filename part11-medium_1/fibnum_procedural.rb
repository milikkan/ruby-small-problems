# Rewrite your recursive fibonacci method so that it computes its results without recursion.

# def fibonacci(n)
#   return 1 if n <= 2
#   first = 1
#   second = 1
#   fibonacci = first + second
#   index = 3
#   loop do
#     break if index >= n
#     first = second
#     second = fibonacci
#     fibonacci = first + second
#     index += 1
#   end
#   fibonacci
# end

# shorter solution



def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = [last, first + last]
  end
  last
end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501