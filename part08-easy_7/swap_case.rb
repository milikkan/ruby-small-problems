=begin

Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

- input: a string
- output: a new string

- goal: swap the casing of letters
- rules:
  * cannot use existing method
  * every uppercase letter will be converted to lowercase, and lowercase to uppercase
  * chars other than letters will be left as they are

=end

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def swap_single_letter(letter)
  index = LOWERCASE.find_index(letter)
  if index.nil?
    index = UPPERCASE.find_index(letter) 
    return letter if index.nil?
    letter = LOWERCASE[index]
  else
    letter = UPPERCASE[index]
  end
  letter
end

def swapcase(str)
  str.chars.map { |ch| swap_single_letter(ch) }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'