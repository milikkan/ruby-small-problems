=begin

Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

Examples:

triangle(5)

    *
   **
  ***
 ****
*****
triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

- input: a positive integer
- output: display right triangle

- rules: 
  * right triangle is the one that with the same size at each side

- example:
  * n = 5 -> first row 4 space - 1 star
                       3 space - 2 star
                       2 space - 3 star
                       1 space - 4 star
                       0 space - 5 star
=end

def triangle(n)
  1.upto(n) do |number|
    puts "#{' ' * (n - number)}#{'*' * number}"
  end
end

triangle(9)