def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number == '0' || number.to_i != 0
end

def new_calculation?
  prompt("Would you like to perform another calculation? (Y to perform new calculation)")
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

def operation_to_message(operator)
  case operator
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

operator_prompt = <<-MSG
What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
MSG

prompt("Welcome to Calculator! Please enter your name:")

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt("Please enter valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  number1 = ''
  loop do
    prompt("What is the first number?")
    number1 = gets.chomp
  
    if valid_number?(number1)
      break
    else
      prompt("Please enter a valid number.")
    end
  end
  
  number2 = ''
  loop do
    prompt("What is the second number?")
    number2 = gets.chomp
  
    if valid_number?(number2)
      break
    else
      prompt("Please enter a valid number.")
    end
  end
  
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Please choose 1, 2, 3, or 4.")
    end
  end

  prompt("#{operation_to_message(operator)} the two values...")
  
  if operator == '1'
    result = number1.to_i + number2.to_i
  elsif operator == '2'
    result = number1.to_i - number2.to_i
  elsif operator == '3'
    result = number1.to_i * number2.to_i
  elsif operator == '4'
    result = number1.to_f / number2.to_f
  end
  
  result = case operator
          when '1'
            number1.to_i + number2.to_i
          when '2'
            number1.to_i - number2.to_i
          when '3'
            result = number1.to_i * number2.to_i
          when '4'
            result = number1.to_f / number2.to_f
  end
  
  puts "The result is: #{result}."

  break unless new_calculation?
end
