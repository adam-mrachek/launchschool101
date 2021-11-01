# PROBLEM
# Write a method to computes the difference between the square of the sum of the first `n` positive integers
# and the sum of the squares of the first `n` positive integers

# input: integer
# output: integer representing square of sum - sum of squares
# rules:
#   - calculate values of only postive integers

# EXAMPLES / TEST CASES
# See below

# DATA STRUCTURE
# two local variables to store the result of each calculation: `sum_square` and `square_sum`
# potentially use arrays to create range of integers to perform calculations on

# ALGORITHM
# - initialize two variables, `sum_square` and `square_sum`
# - from 1 upto `n` do:
#   - sum all values
#   - square the sum and store in `sum_square` variable
# - from 1 upto `n` do:
#   - square each integer
#   - get the sum of the square of each integer and store in `square_sum` variable
# - subtract `square_sum` from `sum_square`: `sum_square` - `square_sum`

def sum_square_difference(number)
  sum_square = (1..number).sum**2
  square_sum = (1..number).map{|num| num ** 2}.sum

  sum_square - square_sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150