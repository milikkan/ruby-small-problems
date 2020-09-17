=begin

Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

Examples

diamond(1)

*
diamond(3)

 *
***
 *
diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

- input: an integer
- output: print diamond

- rules:
  * input will always be an odd number
  * draw the diamond in a n x n box

- examples:
  * n = 5

    *    => 2 space 1 star   space * 2 + star = n  num_space = (n - num_star) / 2
   ***   => 1 space 3 stars
  *****  => 0 space 5 stars
   ***
    *

- algorithm:
  * initialize a variable called diamond and set it to empty string
  * loop from 1 to n (loop variable is num_stars)
    * generate line
    * concat new line to diamond
    * increase num_stars by 2
  * loop from (n - 2) downto 1
    * generate line
    * concat new line to diamond
    * decrease num_stars by 2
  * print diamond string

  * generate line algorithm
    * calculate num_space [num_space = (n - num_star) / 2]
    * concatenate space and num_star times (*)
    * concatenate new line (\n)

=end

def generate_line(size, num_star)
  num_space = (size  - num_star) / 2
  return "#{' ' * num_space}#{'*' * num_star}\n"
end

# first solution according to algorithm
# def print_diamond(size)
#   diamond = ''
#   num_stars = 1
  
#   loop do
#     break if num_stars > size
#     diamond += generate_line(size, num_stars)
#     num_stars += 2
#   end

#   num_stars = size - 2

#   loop do
#     break if num_stars < 0
#     diamond += generate_line(size, num_stars)
#     num_stars -= 2
#   end

#   puts diamond
# end

# second solution
def print_diamond(size)
  diamond = ''
  num_stars = 1
  
  1.upto(size) do |num_stars|
    diamond += generate_line(size, num_stars) if num_stars.odd?
  end
  
  (size - 2).downto(1) do |num_stars|
    diamond += generate_line(size, num_stars) if num_stars.odd?
  end
  
  puts diamond
end

print_diamond(11)