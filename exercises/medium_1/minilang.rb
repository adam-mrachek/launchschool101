def number?(num)
  num.to_i.to_s == num
end

def minilang(input)
  register = 0
  stack = []
  commands = input.split(' ')

  commands.each do |command|
    if number?(command)
      register = command.to_i
    elsif command == 'PRINT'
      puts register
    elsif command == 'PUSH'
      stack << register
    elsif command == 'ADD'
      register += stack.pop
    elsif command == 'SUB'
      register -= stack.pop
    elsif command == 'MULT'
      register *= stack.pop
    elsif command == 'DIV'
      register /= stack.pop
    elsif command == 'MOD'
      register %= stack.pop
    elsif command == 'POP'
      register = stack.pop
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)