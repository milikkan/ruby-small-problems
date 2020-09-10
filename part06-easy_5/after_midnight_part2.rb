=begin

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Examples:

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

- input: string (in the format 'hh:mm')
- output: integer (in the range 0..1439)

- rules:
  * a day consists of 24 * 60 = 1440 minutes
  * after_midnight method will convert the time after 00:00 to minutes
  * before_midnight method will convert the time before 00:00 to minutes
  * if the hour is 24, it is same as 00

- algortihm:
  1. parse the input using the colon as seperator
  2. assign the part before colon to hours, after colon to mins variables (convert them to integer)
  3. apply modulo 24 to the hour
  4. multiply hour by 60 and add minutes (hours * 60 + mins)
  5. for before_midnight multiply result by -1 and get module of 1440

- examples:
  after-00:00 -> hours = 0 mins = 0 -> 0 % 24 = 0 -> 0 * 60 + 0 = 0
  before-00:00 -> hours= 0 mins = 0 -> 0 % 24 = 0 -> -0 % 1440 = 0 -> 0 * 60 + 0 = 0
  
=end

def after_midnight(time_of_day)
  hours, mins = time_of_day.split(':').map { |str| str.to_i }
  
  hours %= 24 if hours >= 24
  total_minutes = 60 * hours + mins
end

def before_midnight(time_of_day)
  total_minutes = -1 * after_midnight(time_of_day)
  total_minutes %= 1440
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0