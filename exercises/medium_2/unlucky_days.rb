# PROBLEM
# Write a method that returns the number of Friday the 13ths in the year given by an argument.
# May assume that the year is greater than 1752 (when the UK adopted the modern Gregorian Calendar),
# and that it will remain in use for the forseeable future.

# input: integer representing a year
# output: integer representing number of Friday the 13ths in given year
# rules:
#   explicit:
#     - must return the number of Friday of 13ths in a given year
#     - can assume that year is after 1752 and use the Gregorian Calendar

# EXAMPLES / TEST CASES
# See below

# Data Structure
# Integer to track number of Friday the 13ths
# Possibly a hash to represent number of days each month
# Or an array to iterate through the 13th day of each month to check if it's a Friday

# ALGORITHM
# - initialize `total` variable and set to 0
# - For every 13th day of each month in the given year:
#   - check to see if 13th day is a Friday
#   - if it's a Friday, add 1 to `total`
# - After checking all 12 months, return `total`

def friday_13th(year)
  total = 0

  (1..12).each do |month|
    if Time.local(year, month, 13).friday?
      total += 1
    end
  end
  
  total
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2