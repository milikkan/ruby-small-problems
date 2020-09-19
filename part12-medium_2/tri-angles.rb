=begin

A triangle is classified as follows:

 * right  -> One angle of the triangle is a right angle (90 degrees)
 * acute  -> All 3 angles of the triangle are less than 90 degrees
 * obtuse -> One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

Examples:

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

- input: 3 integers
- output: a symbol

- goal: take 3 angles values and decide if the triangle that has these angles is valid and if it is valid determine type
- rules:
  * inputs are all integers
  * input may contain 0
  * assume arguments are degrees
  * valid triangle -> the sum of angles must be exactly 180 degrees
                   -> all angles must be greater than 0
  * if triangles is valid, check these:
    - right  -> One angle of 90 degrees
    - obtuse -> One angle is greater than 90
    - acute  -> All 3 angles are less than 90

- algorithm:
  * determine if a triangle with the given angles is valid
  * if not valid, return :invalid
  * if triengle is valid, determine its type depending of the angles values
    - return :right if there is 90
    - return :acute if one value is greater than 90
    - return :obtuse if all angles smaller than 90

=end

def valid_triangle?(angles)
  !angles.include?(0) && angles.sum == 180
end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid unless valid_triangle?(angles)
  if angles.include?(90)
    :right
  elsif angles.any? { |angle| angle > 90 }
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid