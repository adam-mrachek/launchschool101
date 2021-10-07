# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# Answer
# => [1, nil, nil]
# For all elements that are greater than 1, the block will return 'nil' because `puts` returns nil.
# for all alements that are less than 1, the block will return the element for that iteration.
# In this example, the first element, 1, is the only element that is not greater than 1 whereas 2 and 3 are so they return nil.