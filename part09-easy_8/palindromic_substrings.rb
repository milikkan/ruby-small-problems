=begin

Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

Examples:

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

- input: a string
- output: an array of strings

- goal: tor eturn all substrings of the input string that are palindromes
- rules:
  * a palindrome string is a same sequence of characters forwards as it does backwards
  * the output should be arranged in the same sequence as the substrings appear in the input string
  * if there are duplicate palindromes, they all should be included
  * use substrings method from previous exercise
  * case and non-alphabetic characters matter, the substring must be exactly same forwards and backwards to be a palindrome
  * palindrome substring should have at least 2 characters

- algorithm:
  * call substrings method and pass in the input string as an argument
  * iterate thorugh the resulting substring array and filter it
    * for each substring check if it is palindrome
      * the substring is palindrome if it is equal to its reverse
    * if the substring is a palindrome select it
=end

def leading_substrings(string)
  result = []
  (1..string.size).each do |n|
    result << string[0, n]
  end
  result
end

def substrings(string)
  substr_array = []
  len = string.size - 1
  (0..len).each do |n|
    substr_array += leading_substrings(string[n..len])
  end
  substr_array
end

def palindromes(string)
  substrings(string).select do |substr|
    substr.size > 1 && substr == substr.reverse
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
   '-madam-', 'madam', 'ada', 'oo'
 ]
p palindromes('knitting cassettes') == [
   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
 ]