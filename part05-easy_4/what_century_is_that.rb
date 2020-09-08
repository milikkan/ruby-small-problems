=begin

What Century is That?

Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number, 
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Examples:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

1. Understanding the Problem:

- questions:
  - How can I detect centery number?
  - How can I detect suffix? What is the pattern?
  - I assume years will start from 1 and inputs are valid integers.

- input: an integer(year)
- output: a string (century)

- rules:
  - return value will be a string such that : century_number + suffix
  - new centuries starts with years that end with "01"
  - I should detect the suffix
      1st, 2nd, 3rd, 4th, 5th, 6th, .....10th, 11th, 12th,.....20th
      21st, 22nd, 23rd, 24th, 25th .......30th
      31st, 32nd, 33rd.........4th
  - pattern -> last_digit = 1 -> suffix = st
                            2 -> suffix = nd
                            3 -> suffix = rd
                            11, 12, 13 or else -> suffix = th  
  - if (year % 100) == 0 -> century_number= year / 100
    year = 100 -> century_number = 100/100 = 1
    year = 2000 -> century_number = 2000/100 = 20
  - else century_number = (year/100 + 1)
    year = 2001 -> century_number = 2001/100 + 1 = 21
    year = 256 -> century_number = 256/100 + 1 = 3

2. Examples / Test Cases: as given above

3. Data Structure: number

4. Algorithm:

century_method
--------------
- define a method named "century" that takes "year" as integer input
- determine century number and assign it to "century_num"
- determine century suffix and assign it to "century_suffix"
- convert "century_num" to string
- return (century_number + century_suffix)

determine_century_num method
----------------------------
- define the method that takes integer "year" as input
- if "year" mod 100 equals to 0 than
  return year / 100
- else
  return (year / 100) + 1

determine_century_suffix method
-------------------------------
- define the method that takes integer "century_num" as input
- define a variable "suffix" and initialize it to empty string
- seperate the year into digits (using Integer#digits)
- assign resulting array to "digits_arr" variable
- check the first element of "digits_arr" (this is the last digit of year)
- if this element is 1, 2 or 3
  - check the second element of "digits_arr"
  - if it is 1
      assign 'th' to "suffix"
  - else
      - assign 'st' to "suffix" if the first element of array is 1
      - assign 'nd' to "suffix" if the first element of array is 2
      - assign 'rd' to "suffix" if the first element of array is 3
- else (first element of arr is not 1, 2 or 3)
  - assign 'th' to "suffix"
- return "suffix"

5. Code: 

=end

def determine_century_num(year)
  if (year % 100) == 0
    year / 100
  else
    (year / 100) + 1
  end
end

def determine_century_suffix(century_num)
  suffix = ''
  digits_arr = century_num.digits
  if [1, 2, 3].include?(digits_arr[0])
    if digits_arr[1] == 1
      suffix = 'th'
    else
      suffix = case digits_arr[0]
               when 1 then 'st'
               when 2 then 'nd'
               when 3 then 'rd'
               end
    end
  else
    suffix = 'th'
  end
  suffix         
end

def century(year)
  century_num = determine_century_num(year)
  century_suffix = determine_century_suffix(century_num)
  century_num.to_s + century_suffix
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
p century(1) == '1st'