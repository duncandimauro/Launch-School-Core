print 'What is the bill? '
bill = gets.chomp.to_f
print 'What is the tip percentage? '

tip_percent = gets.chomp.to_f

tip = bill * tip_percent / 100
total = bill + tip

tip = format("%.2f", tip)
total = format("%.2f", total)

puts "\nThe tip is $#{tip}"
puts "The total is $#{total}"
