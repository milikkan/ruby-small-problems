=begin

Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

Examples:

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

- input: an integer (represents year)
- output: an integer

- goal: to calculate the number of Fridays that are 13th day of the month in the given year
- rules:
  * assume year is greater than 1752
  * count Fridays that are the 13th of the month

- algorithm:
  * initialize a start_day variable and set it to 01 Jan of the input year
  * initialize an end_day year and set it to 31 Dec of the input year
  * loop from start_day upto end_day
    if current date is friday? increment counter
  * return counter

=end
require 'date'

def friday_13th(date)
  start_day = Date.new(date, 1, 1)
  end_day = Date.new(date, 12, 31)
  count = 0

  start_day.upto(end_day) do |date|
    count += 1 if date.day == 13 && date.friday?
  end
  count
end



p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2