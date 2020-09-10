=begin

The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.

Examples:

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

- input: integer (positive or negative)
- output: string (format "hh:mm")

- rules:
  * convert minutes to "hh:mm" format
  * method should work with any integer input so there may be more than 24 hours
  * when input is 0 do nothing
  * positive inputs will be after, negative inputs will be before 00:00

- algorithm:
  1. if input is negative, set negative flag to true and convert it to positive
  2. divide minutes by 60 -> assign result to hours, remainder to minutes
  3. if hours is greater than 24, divide hours by 24, assign remainder to hours
  4. if negative flag is true, subtract hours from 23 and minutes from 60
  5. return string hh:mm

=end

def time_of_day(total_minutes)
  negative = false
  if total_minutes < 0
    total_minutes *= -1
    negative = true 
  end

  hours, mins = total_minutes.divmod(60)
  hours = hours.divmod(24)[1] if hours > 24
  
  if negative
    hours = 23 - hours
    mins = 60 - mins 
  end
  
  format("%02d:%02d", hours, mins)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"