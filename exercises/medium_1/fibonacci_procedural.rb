# PROBLEM

# Given an integer, write a method that computes the `nth` Fibonacci number where `nth` is an argument to the method
# input: integer
# output: integer representing the `nth` Fibonacci number

# rules:
#  explicit: 
#   - the result, `nth` Fibonacci number, must be calculated without using a recursive method
#     - a Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the previous two numbers
#       - the 3rd fibonacci is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5...etc

# EXAMPLES / TEST CASES
# see below

# DATA STRUCTURE
# - Can use either a two-element array to keep track of previous numbers in sequence or two separate variables

# Algorithm
# - initialize local variables or two-element array to record previous numbers
# - return `1` if `n` is equal to `1` or `2`
#   - when `n = 1`, set second element/variable to `1`
#   - when `n = 2`, set first element/variable equal to second variable and then second variable equal to `1`
# - Sum two variables, set first variable equal to second variable and second variable equal to sum
# - Return second variable

def fibonacci(num)
  first = 1
  second = 1

  3.upto(num) do
    sum = first + second
    first = second
    second = sum
  end

  second
end

p fibonacci(20) #== 6765
p fibonacci(100) #== 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501