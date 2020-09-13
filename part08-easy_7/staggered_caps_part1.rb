=begin

Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

Example:

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

- input: a string
- output: a new string

- goal: convert the input string to a new one where every other character is capitalized
- rules:
  * chars other than letters will not be changed
  * First char will be coverted to uppercase, 
  * next character will be converted to lowercase if it is a letter 
  * if it is not a letter it will be left as-is

- algorithm:
  * initialize a letters array
  * initialize a flag variable named "up" to false
  * initialize a result string
  * iterate through the characters of the input string
    * if the current index is even
      set up flag to true
      else set it to false
      
    * if current char is a letter 
      - if "up" is true 
        convert letter to uppercase
        else convert letter to lowercase 
    * concat current char to the result
  * return result

- example run:
  * input: "ALL_CAPS"
    up = false -> iter1: ch = A idx = 0 up = true ch = A result = [A]
               -> iter2: ch = L idx = 1 up = false ch = l result = [A, l]
               -> iter3: ch = L idx = 2 up = true ch = L result = [A, l, L]
               -> iter4: ch =' 'idx = 3 up = false ch = ' ' result = [A, l, L, ' ']  
=end

LETTERS = ('A'..'Z').to_a + ('a'..'z').to_a

def staggered_case(str)
  result = ''
  up = false
  str.chars.each_with_index do |ch, idx|
    idx.even? ? up = true : up = false
    if LETTERS.include?(ch)
      up ? ch = ch.upcase : ch = ch.downcase
    end
    result << ch
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'