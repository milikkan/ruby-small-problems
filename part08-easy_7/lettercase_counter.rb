=begin

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

Examples

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

- input: a string
- output: a hash

- goal: to count the lowercase chars, uppercase chars, and other chars and store them in the hash
- rules:
  * lowercase chars are a..z
  * uppercase chars are A..Z
  * other chars are everthing else including space
  * when the input is empty string, return all three value equal to 0

- algorithm:
  * create an array of lowercase letters as constant
  * create an array of uppercase letters as constant
  * create a hash with three keys (lowercase, uppercase, neither) and set them to 0
  * iterate through the characters of the string
    * for each iteration check if the current char is included in the either arrays
    * increment the appropriate value of the hash
  * return hash

=end

LOWERCASE = ('a'..'z').to_a
UPPERCASE = ('A'..'Z').to_a

def letter_case_count(str)
  hsh = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }
  str.chars.each do |ch|
    if LOWERCASE.include?(ch)
      hsh[:lowercase] += 1
    elsif UPPERCASE.include?(ch)
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
  end
  hsh
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }