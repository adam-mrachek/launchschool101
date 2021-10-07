# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# Answer
# => [1, 2, 3]
# The last line in the block evaluates to "true" because 'hi' is truthy.
# Since it will evaluate to true for every element in the array, the method returns an array with all original elements.