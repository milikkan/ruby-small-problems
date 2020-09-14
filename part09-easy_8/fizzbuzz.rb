=begin

Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

=end

def fizzbuzz(number1, number2)
  result = ''
  (number1..number2).each do |number|
    if number % 5 == 0 && number % 3 == 0
      result << "FizzBuzz" 
    elsif number % 3 == 0
      result << "Fizz"
    elsif number % 5 == 0
      result << "Buzz"
    else
      result << number.to_s
    end
    result << ', ' unless number == number2
  end
  puts result
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
