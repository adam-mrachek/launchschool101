def prompt(message)
  puts "=> #{message}"
end

def integer?(number)
  number == number.to_i.to_s
end

def float?(number)
  number == number.to_f.to_s
end

def valid_number?(number)
  integer?(number) || float?(number)
end

def new_calculation?
  prompt("Would you like to perform another calculation? (Y or N)")
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

def operation_to_message(operator)
  result = case operator
            when '1'
              'Adding'
            when '2'
              'Subtracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
            end

  result
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

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  puts "The result is: #{result}."

  break unless new_calculation?
end
