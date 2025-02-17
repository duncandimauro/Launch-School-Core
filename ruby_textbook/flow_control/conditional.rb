puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
elsif a == 5 then puts "a is 5"
else
  puts "a is neither 3, 4, nor 5"
end

str = a == 6 ? "but a is indeed 6" : "a is not 6"

puts str

puts "a is NOT 7" unless a == 7
