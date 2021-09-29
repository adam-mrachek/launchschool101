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

def calculate_monthly_payment(amount, monthly_rate, duration_months)
  amount * (monthly_rate / (1 - (1 + monthly_rate)**(-duration_months)))
end

def prompt(string)
  puts "--> #{string}"
end

prompt("Welcome to the Loan Calculator")
prompt("Please enter the total loan amount:")

loan_amount = gets.chomp.to_f

prompt("Enter the Annual Percentage Rate (APR)-(if 5%, enter 5):")
apr = gets.chomp.to_f / 100
monthly_interest_rate = apr /12

prompt("Enter the duration of the loan in months:")
duration_months = gets.chomp.to_f

monthly_payment = calculate_monthly_payment(loan_amount, monthly_interest_rate, duration_months)

prompt("Your monthly payment will be: $#{monthly_payment.round(2)}")
