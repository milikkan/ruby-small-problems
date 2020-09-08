# Sum or Product of Consecutive Integers Further Exploration
# solving the problem using Enumerable#inject
# and validating user inputs

def compute_sum(num)
  (1..num).inject(:+)
end

def compute_product(num)
  (1..num).inject(:*)
end

def valid_integer?(num)
  num.to_i.to_s == num && num.to_i.positive?
end

number = ''
loop do
  puts ">> Please enter an integer greater than 0:"
  number = gets.chomp

  break if valid_integer?(number)
  puts "Invalid input..."
end 

choice = ''
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp

  break if %w(s p).include?(choice)
  puts "Invalid choice..."
end

number = number.to_i
if choice == 's'
  puts "The sum of the integers between 1 and #{number} is #{compute_sum(number)}."
elsif choice == 'p'
  puts "The product of the integers between 1 and #{number} is #{compute_product(number)}."
end