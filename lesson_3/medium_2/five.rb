# Depending on a method to modify its arguments can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Whether the above "coincidentally" does what we think we wanted "depends" upon what is going on inside the method.

# How can we change this code to make the result easier to predict and easier for the next programmer to maintain?

# Answer: the best way to make the code more predictable would be to create two separate methods: 1 for strings and 1 for arrays.
# Then each method would return the desired result instead of relying on the method to correctly modify arguments being passed in.

# Another option would be to use the same operator, `+=`, for strings and arrays and then return each at the end of the method.