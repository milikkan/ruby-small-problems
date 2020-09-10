=begin

Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

Example:

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

- input: an array of strings
- output: an array of strings

- rules
  * remove vowels from each string in the given array
  * preserve case of the letters

- algorithm:
  * create a vowels array
  * iterate through the input array and transfor each string
    * iterate through each string  
      * while iterating, delete the current char if the lowercased version of it is included in the vowels array
  * return transformed array

=end

VOWELS = %w(a e i o u)

def remove_vowels(arr)
  arr.map do |str|
    str.chars.delete_if do |ch|
      VOWELS.include?(ch.downcase)
    end.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']