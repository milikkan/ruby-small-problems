=begin

A triangle is classified as follows:

 * equilateral -> All 3 sides are of equal length
 * isosceles   -> 2 sides are of equal length, while the 3rd is different
 * scalene     -> All 3 sides are of different length

 To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

Examples:

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

- input: 3 numbers
- output: a symbol

- goal: to detect if a triangle of input lengths of sides is valid or if valid the type of the triangle
- rules:
  * I assume 3 inputs are valid numbers and will not validate it
  * input can be any number: integer or float or zero
  * input can be negative number
  * valid triangle -> all sides are greater than 0
                   -> sum of the lengths of two shortest sides are greater than the length of the longest side
  * if valid triangle, check for one of these:
    - equilateral -> All 3 sides are of equal length
    - isosceles   -> 2 sides are of equal length, while the 3rd is different
    - scalene     -> All 3 sides are of different length

- algorithm:
  * detect if valid triangle
    * check if any of the sites are <= 0
      - return false (not valid) if there is 0 or negative input
    * detect max value
    * sum the other two values
      - return false (not valid) if sum <= max 
  * return :invalid if not
  * if valid check for the type of triangle
    - return :equilateral if all inputs are same
    - return :scalene if all inputs are different
    - return :isosceles otherwise
=end

def valid_triangle?(side1, side2, side3)
  sides = [side1, side2, side3]
  return false if sides.any? { |side| side <= 0 }
  max = sides.sort!.pop
  sides.sum > max
end

def triangle(side1, side2, side3)
  return :invalid unless valid_triangle?(side1, side2, side3)
  if [side2, side3].all? { |side| side == side1 }
    :equilateral 
  elsif [side2, side3].none? { |side| side == side1 }
    :scalene
  else
    :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid