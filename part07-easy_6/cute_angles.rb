=begin

Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

Examples:

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

- input: an float
- output: a string

- rules:
  * convert the floating point number to the string representation
    (format: DDD MM'SS")
  * a degree has 60 minutes
  * a minute has 60 seconds
  * if the input is greater than or equal to 360, apply modulo operator and get the remaining

- algorithm:
  * calculate degrees, minutes, seconds
    - truncate the input and assign the whole part to degrees variable
    - apply modulo 360 to the degrees
    - subtract degrees from input to grab the fraction and assign this value to minutes_temp variable
    - multiply minutes_temp with 60
    - trancute minutes_temp variable and assign the whole part to the minutes variable
    - subtract minutes from minutes_temp and assign result to the seconds variable
    - multiply seconds with 60
  
  * format the output

- example:
  input: 76.73 -> degrees = 76.73.truncate = 76
                  minutes_temp = 76.73 - 76 = 0.73
                  minutes_temp = 60 * 0.73 = 43.8
                  minutes = 43.8.truncate = 43
                  seconds = 43.8 - 43 = 0.8
                  seconds = 48

=end

DEGREE = "\xC2\xB0"
TOTAL_SECONDS = 60 *60

def dms(angle)
  total_seconds = (angle * TOTAL_SECONDS).round
  degrees, seconds = total_seconds.divmod(TOTAL_SECONDS)
  minutes, seconds = seconds.divmod(60)
  
  format("%d#{DEGREE}%02d'%02d\"", degrees, minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
