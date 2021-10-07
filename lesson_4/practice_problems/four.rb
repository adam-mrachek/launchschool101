# What is the return value of each_with_object in the following code? Why?

result = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p result

# Answer
# The return value is a hash with keys set to the first letter of each element in the given array object.
# The values of the returned hash are each element in the given array.
# When we invoke `each_with_object`, we pass in an object as an argument. 
# that object is then passed into the block and its updated value is returned at the end of each iteration.
# After each element in the calling object (the array in this example) has been iterated through, 
# `each_with_object` returns the initially given object (`{}`) which now contains all of the updates.