=begin

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Examples:

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

- input: a string
- output: a string

- goal: to return the middle character(s) of the given string
- rules:
  * if the length is odd, return the middle single character
  * if the length is even, return 2 characters that are in the middle
  * there will be no empty string inputs

- algorithm:
  * divide the size of input string by 2 (integer division)
  * assign result to a variable called middle
  * if size is odd get the middle character
  * else get the preceding character and middle character

- example:
  "I love ruby" -> size = 11 -> odd -> 11 / 2 = 5 -> [5..5] 'e'
  "Launch" -> size = 6 -> even -> 6 / 2 = 3 [2..3] -> 'un'
  "ab" - size = 2 -> even -> 2 / 2 = 1 [0..1] -> 'ab'

=end

def center_of(string)
  len = string.size
  middle = len / 2
  len.odd? ? string[middle] : string[middle - 1, 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'