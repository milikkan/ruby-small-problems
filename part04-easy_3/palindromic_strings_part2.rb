=begin

Palindromic Strings (Part 2)

Write another method that returns true if the string passed as an argument is a palindrome, 
false otherwise. 
This time, however, your method should be case-insensitive, 
and it should ignore all non-alphanumeric characters. 
If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

Examples:

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

4. Algorithm:

- convert the input string to a char array
- traverse this array and check each char if it is an alphanumeric char
  (alphanumeric includes capital letters, small letters and digits)
    - if it is, put the char into another array
- reverse this array and check if it is equal to its reversed version
- return the comparison result

5. Code:

=end

def real_palindrome?(str)
  plain_chars = str.downcase.chars.select do |ch|
    ('a'..'z').include?(ch) || ('0'..'9').include?(ch)
  end

  plain_chars == plain_chars.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false