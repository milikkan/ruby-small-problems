=begin

A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

Examples:

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; however, it does not print the underscores when printing long numbers. Don't be alarmed if you don't see the underscores when running your tests.

- input: a number
- output: a number

- goal: detect if input is a double number, if so return it. If not, return 2 times the input.
- rules:
  * double numbers have even number of digits. Left half must be equal to the righ half.
  * first detect if the number is double or not.

- examples:
  107 -> to_s -> "107" - size = 3 -> odd -> return 2 * 107 = 214
  3333 -> to_s -> "3333" - size = 4 - even -> 4 / 2 = 2 slice(0, 2) == slice(2, 4) -> true -> return 3333

- algortihm:
  * convert input to string
  * if length of string is odd, return 2 times the input number
  * else (number is even in this case)
    * divide length by 2 and assign result to half variable
    * check if first half is equal to second half
     - input.to_s.slice(0, half) == input.to_s.slice(half, length)
    * if true return the input
    * else return 2 times input

=end

def double_number?(number)
  len = number.size
  half = len / 2
  number.slice(0, half) == number.slice(half, len)
end

def twice(number)
  return number * 2 if number.to_s.size.odd?
  double_number?(number.to_s) ? number : number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10