# ask user for two numbers
# ask for type of operation (add, subtract, multiply, divide)
# perform operation
# display result

def calculate()

  puts("Welcome to the Calculator!")
  puts ("What's the first number?")
  num1 = gets.chomp

  puts ("What's the second number?")
  num2 = gets.chomp

  puts ("What operation would you like to perform? (1) add (2) subtract (3) multiply (4) divide")

  oper = gets.chomp

  ans = ''

  case oper
  when '1'
    ans = num1.to_i + num2.to_i
  when '2'
    ans = num1.to_i - num2.to_i
  when '3'
    ans = num1.to_i * num2.to_i
  when '4'
    ans = num1.to_f / num2.to_f
  else
    puts "Error: Please enter a value 1, 2, 3, or 4 for the corresponding operation"
  end

  puts "The answer is: #{ans}"

end

calculate
