# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# Answer
# `shift` removes the first key-value pair from the hash and returns it as a two-item array ([key,value]).
# We can reference the Ruby docs to find out and/or run the code to examine the return value and original hash.