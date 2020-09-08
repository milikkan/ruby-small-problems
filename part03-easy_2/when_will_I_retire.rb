=begin

When will I Retire?

Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

1. Understanding the Problem:

- questions:
  How can I obtain current year?
    I can use Ruby's Time class. 
  Should I validate user input?

- input: age, retirement age (integers)
- output: year to retire, years remaining to work (integers)

- rules:
  explicit:
    - Obtain age and retirement age from user.
    - obtain current year from Ruby
    - calculate number of years to word
    - add number of years to wrok to the current year to calculate the retirement year
    - display the results

  implicit:
    - I assume that user input is valid.
    - I have to obtain current year from Ruby.
    - I assume that age to retire is greater tahn or equal to the current age

2. Examples / Test Cases: given above

3. Data Structure: integer, date

4. Algorithm:

- prompt the user for age (input will be obtained on the same line, so use print instead of puts)
- convert input to integer and save it to "age" var.
- prompt the user for age to retire (input will be obtained on the same line, so use print instead of puts)
- convert input to integer and save it to "age_to_retire" var.
- subtract "age" from "age_to_retire" and assign the result to "remaining_work_years" var.
- get the current year and save it to "current_year" var.
  (use Time.now.year)
- add "remaining_work_years" to "current_year" and assign the result to "retirement_year" var.
- display the results using puts and string interpolation

5. Code:

=end


print "What is your age? "
age = gets.to_i

print "At what age would you like to retire? "
age_to_retire = gets.to_i

remaining_work_years = age_to_retire - age

current_year = Time.now.year
retirement_year = current_year + remaining_work_years

puts ""
puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{remaining_work_years} years of work to go!"