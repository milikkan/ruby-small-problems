=begin

How big is the room?

Build a program that asks a user for the length and width of a room in meters and then 
displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

1. Understanding the Problem:

- questions:
  Are input values integers or floats?
  How should I format the output, how many digits after point?

- input: two numbers (integer? float?)
- output: a float

- rules:
  explicit:
    - width and length will be taken from the user as meters
    - area = witdh * length
    - area will be converted to feet square
    - result will be displayed
    - no input validation

  implicit:
    - input is assumed to be float
    - output will be formatted as 2 digits after the point

2. Examples / Test Cases: given in the problem statement

3. Data Structure: number

4. Algorithm:

- ask the user length in meter
- assign input to "length" variable and convert this to float
- ask the user width in meter
- assign input to "width" variable and convert this to float
- multiply width by length to calculate and assign result to area_meter
- display the result using puts method and string interpolation
    convert area_meter to feet square by multiplying it with 10.7639
    also format the outputs as to have 2 digits after the point (use Kernel#format)

5. Code:

=end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_meter = width * length

puts "The area of the room is #{format('%.2f', area_meter)} square meters " + \
     "(#{format('%.2f', area_meter * 10.7639)} square feet)."