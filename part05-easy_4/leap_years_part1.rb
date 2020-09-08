=begin

Leap Years (Part 1)

In the modern era under the Gregorian Calendar, leap years occur in every year that is 
evenly divisible by 4, unless the year is also divisible by 100. 
If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. 
Write a method that takes any year greater than 0 as input, and 
returns true if the year is a leap year, or false if it is not a leap year.

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

1. Understanding the Problem:

- input: an positive integer
- output: boolean

- rules
  divisible by 4 -> yes -> divisible by 100 -> yes -> divisible by 400 -> yes -> leap year
                    no  -> not a leap year
                           divisible by 100 -> no -> leap year
                                                      divisible by 400 -> no -> not a leap year    
2. Examples/ Test Cases: given above

3. Data Structure: number

4. Algortihm:

- if "year" is divisible by 4
  - if "year" divisible by 100
    - if "year" divisible by 400
      - return "true"
    -else (not divisible by 400)
      - return "false"
  - else (not divisible by 100)
    - return "true"
- else (not divisible by 4)
  - return "false"


5. Code:

=end

def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        true
      else
        false
      end
    else
      true
    end
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true