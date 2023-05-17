
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
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

def messages(message, lang='en')
  MESSAGES[lang][message]
end

prompt messages 'welcome'

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt messages 'valid_name'
  else
    break
  end
end

prompt "Hi #{name}!"

loop do
  num1 = ''
  loop do
    prompt "What's the first number?"
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt "Hmm... that doesn't look like a valid number"
    end
  end

  num2 = ''
  loop do
    prompt "What's the second number?"
    num2 = gets.chomp

    if valid_number?(num2)
      break
    else
      prompt "Hmm... that doesn't look like a valid number"
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt operator_prompt

  oper = ''
  loop do
    oper = gets.chomp

    if %w(1 2 3 4).include?(oper)
      break
    else
      prompt "Must choose 1, 2, 3 or 4"
    end
  end

  prompt "#{operation_to_message(oper)} the two numbers..."

  result = case oper
           when '1'
             num1.to_i + num2.to_i
           when '2'
             num1.to_i - num2.to_i
           when '3'
             num1.to_i * num2.to_i
           when '4'
             num1.to_i / num2.to_f
           end

  prompt "The answer is: #{result}"

  prompt "Do you want to perform another calculation? (Y to calculate again)"
  ans = gets.chomp
  break unless ans.downcase.start_with?('y')
end

prompt "Thank you for using the calculator, goodbye!"
