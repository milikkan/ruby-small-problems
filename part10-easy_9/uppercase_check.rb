=begin

Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

Examples:

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

- input: a string
- output: boolean

- goal: to check if all of the letters are uppercased
- rules:
  * return true only if all of the alphabetic characters are uppercased
  * ignore non-alphabetic characters
  * empty string should return true in this case
 
=end

# ALPHA = ('a'..'z').to_a

# def uppercase?(string)
#   string.chars.all? do |ch|
#     ALPHA.include?(ch.downcase) ? ch.upcase == ch : true
#   end
# end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true