=begin

Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Examples:

balanced?('What (is) this?') == true
balanced?('What is) this?') == false -> count = -1 -> false
balanced?('What (is this?') == false -> count = 1 -> false
balanced?('((What) (is this))?') == true -> count = 0
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

Note that balanced pairs must each start with a (, not a ).

- input: a string
- output: a boolean

- goal: check if all parantheses in the input string are properly balanced
- rules:
  * balanced parantheses must occur in matching pairs
  * each pair must start with opening parans '('
  * if there is no parantheses in the input, return true
  * I should account for nested parantheses

- algorithm:
  * initialize a count variable and set it to 0
  * iterate through every char of input
    * if the current char is '(' increment count by 1
    * if the current char is ')' decrement count by 1
    * if count becomes negative during the loop return false
  * return true if count is 0

- examples:
  input: 'What (is) this?' -> count = 0 -> true
  input: ((What) (is this))? -> count = 0 -> true 
  input: ((What)) (is this))? -> count = -1 -> false

=end

def balanced?(string)
  count = 0
  string.each_char do |ch|
    count += 1 if ch == '('
    count -= 1 if ch == ')'
    return false if count < 0
  end
  count == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false