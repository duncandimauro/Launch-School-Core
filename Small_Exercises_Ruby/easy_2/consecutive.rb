puts '>> Please enter an integer greater than 0:'
number = gets.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

total = 1

if choice == 's'
  for i in 2..number do total += i end
  puts "The sum of integers between 1 and #{number} is #{total}"
elsif choice == 'p'
  for i in 2..number do total *= i end
  puts "The product of integers between 1 and #{number} is #{total}"
else
  puts "Error: please type either 's' or 'p'"
end
