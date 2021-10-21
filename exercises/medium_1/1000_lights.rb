# input: integer
# output: array
# requirements:
#  explicit:
#    - the input integer represents the number of lights on a bank of switches
#    - all lights start in the 'off' position
#    - from 1 to `n` (ie. the number of switches), toggle every nth switch
#      - first pass would toggle 1, 2, 3, 4..
#      - second pass would toggle 2, 4, 6, 8 ...
#      - third pass would toggle 3, 6, 9, ...
#    - the return array identifies which lights are 'on' aftert `n` repetitions.
#
# Test Cases / Examples
# - with `n = 5` lights, the return value should be `[1, 4]`
# - with `n = 10`, the return value should be `[1, 4, 9]`
#
# Data Structure: array of "light switches" represented by "on" or "off"
#
# Algorithm
# - Create a `switches` Hash with key number as value and on/off position as value
# - Initialize a `repetition` variable set to 1 to track the number of repetitions
# - For each repetition, toggle every nth switch in the switches Hash.
#   - To toggle switch, if in "off" position, change to "on". If in "on" position, switch to "off"
# - increment `repetition` variable after each repetition
# - create `results` array to store value of "on" switches
# - return results array

def initialize_lights(n)
  lights = {}
  1.upto(n) do |n|
    lights[n] = "off"
  end

  lights
end

def toggle(switch)
  if switch == "off"
    "on"
  else
    "off"
  end
end

def light_toggler(num)
  lights = initialize_lights(num)
  repetition = 1

  while repetition <= num
    lights.each do |k, v|
      if k % repetition == 0
        lights[k] = toggle(v)
      else
        lights[k] = v
      end
    end
    repetition += 1
  end
  lights.select{ |k, v| v == "on"}.keys
end

p light_toggler(5)
p light_toggler(10)