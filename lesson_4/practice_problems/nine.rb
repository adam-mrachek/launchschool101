# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# Answer
# => [nil, 'bear']
# `map` returns a new array with the results of running the block once for every element/key-value pair in the hash
# Each element of the new array contains the return value of the block.
# In this case, the return value will either be the 'value' of the key-value pair (if the `if` statement evaluates to true)
# or the return value will be 'nil' since there are no other conditions when the `if` statement evaluates to false.