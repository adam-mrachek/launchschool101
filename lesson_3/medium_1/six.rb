# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# Answer

# The answer is 34 because the `answer` variable is not changed inside the `mess_with_it` method.
# `some_number += 8` reassigns some_number to a new variable to the variable passed in as an argument, `answer` in this case,
# is not modified in the method. 

# So, on line 11, we are essentiall printing the result of `42 - 8`