nums = []

puts '==> Enter the 1st number:'
nums.push gets.chomp.to_i
puts '==> Enter the 2nd number:'
nums.push gets.chomp.to_i
puts '==> Enter the 3rd number:'
nums.push gets.chomp.to_i
puts '==> Enter the 4th number:'
nums.push gets.chomp.to_i
puts '==> Enter the 5th number:'
nums.push gets.chomp.to_i
puts '==> Enter the last number:'
num = gets.chomp.to_i

if nums.include? num
  puts "The number #{num} appears in #{nums}."
else
  puts "The number #{num} does not appear in #{nums}."
end
