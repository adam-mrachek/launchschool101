# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# `a` still equals 2
# `b` now equals [3, 8]

# In line 7, the variable `a` is never referenced. The code `arr[0] += 2` was modifying the array,
# not the variable `a`. We are assigning a new object at the [0] index of the array so instead of arr[0]
# containing `a`, it now contains `4`.

# On line 8, the value of `b` did change because `b` is an array and we modified that array by assigning a new value
# at index 0 of that array.