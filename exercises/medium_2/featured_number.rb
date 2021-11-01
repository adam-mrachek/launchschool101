# PROBLEM
# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. 
# For example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).
# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument.
# Return an error message if there is no next featured number

# input: integer
# output: integer representing next featured integer
# rules:
#   explicit:
#     - Given the integer argument, find the NEXT featured number
#     - featured number must be multiple of 7, an odd number, and cannot contain duplicate digits
#     - It is not possible for a number greater than 9,999,999,999 to be a featured number because it will always contain duplicate digits

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# integer to increment and check for qualifying conditions
# Array to store inidividual digits of given integer and check for duplicates

# Algorithm
# - set local variable `number` equal to argument
# - if number is even, add 1 to `number`
# - for all odd integers:
#   - if integer is a multiple of 7 AND does not contain duplicate digits
#     - return number
#   - else, add 2 to number

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    if (number.to_s.split('').size == number.to_s.split('').uniq.size)
      return number
    elsif number > 9999999999
      return "There is no possible number that fulfills those requirements"
    else
      number += 14
    end
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements