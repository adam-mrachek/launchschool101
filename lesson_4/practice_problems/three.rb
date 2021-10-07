# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# Answer
# The return value of reject will be a new array containing all elements of the original array.
# `#reject` returns a new array of all items for which the block is not true.
# `puts` returns nil so the block will return `false`.