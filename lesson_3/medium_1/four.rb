# Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Answer: The difference between using `<<` and `+` for modifying the buffer is that
# `<<` mutates the caller (buffer) so the original `buffer` object will be modified.
# By using `+` in the second example to modify `buffer`, Alyssa is creating a new `buffer` variable
# with a scope local to the `rolling_buffer2` method and does not modify the original `buffer` object
# that is passed into the method. 
# The return value of both methods are the same, but first method modifies the original `buffer` variable which may or may not be desired.