# You will need 3 pieces of info:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration

# From the above, you'll need to calculate the following things:

# monthly interest rate
# loan duration in months
# monthly payment

# monthly_payment = monthly payment
# loan_amt = loan amount                    (given)
# interest_rate = monthly interest rate     (given in terms of APR)
# loan_duration = loan duration in months   (given)

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  ((Integer(num) || Float(input)) && num.to_f >= 0) rescue false
end

prompt 'Welcome to the Mortgage Calculator!'

loop do
  loan_amt = ''
  loop do
    prompt "What is the value of the loan in dollars?"
    loan_amt = gets.chomp

    if valid_number?(loan_amt)
      loan_amt = loan_amt.to_f
      break
    else
      prompt "Hmm... that doesn't look like a valid number"
    end
  end

  interest_rate = ''
  loop do
    prompt "What is the Annual Percentage Rate (APR)? Example: '10' means 10%"
    interest_rate = gets.chomp

    if valid_number?(interest_rate)
      interest_rate = interest_rate.to_f / 1200
      break
    else
      prompt "Hmm... that doesn't look like a valid number"
    end
  end

  loan_duration = ''
  loop do
    prompt "What is the duration of the loan in months?"
    loan_duration = gets.chomp

    if valid_number?(loan_duration)
      loan_duration = loan_duration.to_f
      break
    else
      prompt "Hmm... that doesn't look like a valid number"
    end
  end

  monthly_payment =
    loan_amt * (interest_rate / (1 - (1 + interest_rate)**(-loan_duration)))

  prompt "Your total monthly payment is: $#{format('%.2f', monthly_payment)}"

  prompt "Do you want to perform another calculation? (Y to calculate again)"
  ans = gets.chomp
  break unless ans.downcase.start_with?('y')
end

prompt "Thank you for using the calculator, goodbye!"
