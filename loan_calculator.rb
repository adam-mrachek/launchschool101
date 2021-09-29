require 'pry'
# Welcome user
# get total loan amount
# get the APR
# get the laon duration

# calculate monthly interest rate
# calculate monthly payment

def integer?(input)
  input == input.to_i.to_s
end

def float?(input)
  input == input.to_f.to_s
end

def number?(input)
  integer?(input) || float?(input)
end

def calculate_monthly_payment(amount, apr, duration_months)
  # Convert APR to percent then divde by 12 to get monthly rate
  monthly_rate = (apr.to_f / 100) / 12
  amount.to_f * (monthly_rate / (1 - (1 + monthly_rate)**(-duration_months.to_f)))
end

def prompt(string)
  puts "--> #{string}"
end

prompt("Welcome to the Loan Calculator")
prompt("Please enter the total loan amount:")

loan_amount = ""

loop do
  loan_amount = gets.chomp

  if number?(loan_amount)
    break
  else
    prompt("Please enter a valid loan amount.")
  end
end

prompt("Enter the Annual Percentage Rate(APR), (ex. if 5%, enter 5):")

apr = ""

loop do
  apr = gets.chomp

  if number?(apr)
    break
  else
    prompt("Please enter valid APR. Example: if APR is 5%, enter 5.")
  end
end

prompt("Enter the duration of the loan in months:")
duration_months = gets.chomp

monthly_payment = calculate_monthly_payment(loan_amount, apr, duration_months)

prompt("Your monthly payment will be: $#{monthly_payment.round(2)}")
