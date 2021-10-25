# PROBLEM

# Given an integer, write a recursive method that computes the `nth` Fibonacci number where `nth` is an argument to the method
# input: integer
# output: integer representing the `nth` Fibonacci number

# rules:
#  explicit: 
#   - the result, `nth` Fibonacci number, must be calculated using a recursive method
#     - a Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the previous two numbers
#       - the 3rd fibonacci is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5...etc
#     - recursive methods have three primary qualities
#       - They call themselves at least once
#       - they have a condition that stops the recursion
#       - They use the result returned by themselves

# EXAMPLES / TEST CASES
# see below


def fibonacci(num)
  return 1 if num <= 2

  fibonacci(num - 1) + fibonacci(num - 2)
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765