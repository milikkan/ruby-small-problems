=begin

Short Long Short

Write a method that takes two strings as arguments, determines the longest of the two strings, 
and then returns the result of concatenating the shorter string, the longer string, 
and the shorter string once again. You may assume that the strings are of different lengths.

Examples:

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

1. Understanding the Problem:

- questions?
  input validation?

- input: 2 strings
- output: a string
- rules:
  explicit:
    - determine longer, return shorter+longer+shorter
    - inputs are of different length
    
  implicit:
    - inputs are assumed to be valid strings
    - one input can be empty string, threat it as 0 length (implied from examples)

2. Examples / Test Cases: as given above

3. Data Structure: string

4. Algortihm:

- define method short_long_short that takes two string parameters "str1" and "str2"
- find out the length of each string
- compare lengths
  - if str1.length > str2.length, assign str1 to "longer"
  - else assign str2 to "longer"
- compare "longer" with str1
  - if it is equal to str1, assign str2 to "shorter"
  - else assign str1 to "shorter"
- concatenate "shorter" + "longer" + "shorter" and return

5. Code:

=end

def short_long_short(str1, str2)
  str1.length > str2.length ? longer = str1 : longer = str2
  
  str1 == longer ? shorter = str2 : shorter = str1

  shorter + longer + shorter
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"