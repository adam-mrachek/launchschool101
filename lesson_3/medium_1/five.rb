# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. 
# A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Answer

# The `limit` variable is initialized outside the scope of the `#fib` method. 
# Methods in ruby can only access variables initialized within the method, or
# variables that are passed into the method directly as arguments or through block parameters.

# We can add a third argument to `fib` to pass in `limit`