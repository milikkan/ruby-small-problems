=begin

Palindromic Strings (Part 1)

Write a method that returns true if the string passed as an argument is a palindrome, 
false otherwise. 
A palindrome reads the same forward and backward. 
For this exercise, case matters as does punctuation and spaces.

Examples:

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

1. Understanding the Problem:

- input: a string
- output: a boolean

- rules:
  - letter case, spaces and punctuation matter

2. Examples / Test Cases: as given above

3. Data Structure: string

4. Algortihm:

- reverse the string
- compare the original string with reversed version
- return the comparison result

5. Code:

=end

def palindrome?(str)
  str == str.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true