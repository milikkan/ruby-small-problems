=begin
Stringy Strings (Further Exploration)

Modify stringy so it takes an additional optional argument that defaults to 1. 
If the method is called with this argument set to 0, the method should return a String of 
alternating 0s and 1s, but starting with 0 instead of 1.

- input: a positive integer and a number (1 or 0)
- output: a string

- rules
  explicit:
    - Input will be a positive integer, no negative or 0
    - The result will start with 0 or 1 (depending on the second argument) 
      and will continue alternating between 0 and 1
    - second argument is optional, and its default value will be 1
    - The length of the result will be equal to the input number

2. Examples / Test Cases:

puts stringy(6) == '101010' # true
puts stringy(9, "1") == '101010101' # true
puts stringy(4, "1") == '0101' # false
puts stringy(7, "0") == '0101010' # true
puts stringy(7) == '1010101' # true

- Algorithm

  - define method "stringy" that takes "num" and "start" as parameter
  - set start to '1' as the default argument
  - initialize a variable "result" and set it to empty string ('')
  - initialize a variable "first_num" and set it to "start"
  - initiliaze a variable "next_num" and set it to 
      - '0' if "first_num" is '1' 
      - '1' if "first_num" is '0'   
  - calling Integer#times method on the "num", start a loop that executes "num" times
    (the loop will start from 0 and go upto num - 1)
    - name the block variable as "number"
    - append "first_num" to "result" if "number" is even 
    - append "next_num" to "result" if "number" is odd 
  - return result

=end

# def stringy(num, start='1')
#   result = ''
#   first_num = start
#   next_num = (first_num == '1') ? '0' : '1'
  
#   num.times do |number|
#     result << (number.even? ? first_num : next_num)
#   end

#   result
# end

def stringy(num, start='1')
  (1..num).map { |idx| idx.odd? ? start : (start == '1' ? '0' : '1') }.join
end

p stringy(6) == '101010'
p stringy(9, "1") == '101010101'
p stringy(4, "1") == '1010'
p stringy(7, "0") == '0101010'
p stringy(7) == '1010101'