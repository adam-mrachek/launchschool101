# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
p arr.take(2)

# Answer
# `take` returns the first (n) elements from the array. It is not destructive.
# We can reference the docs to learn about about `take` works or we can run the code to see the return value
# and also evaluate the original array (arr) to see if it has been mutated.

