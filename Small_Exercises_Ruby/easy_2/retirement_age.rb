require 'date'

print 'What is your age? '
age = gets.chomp.to_i
print 'At what age would you like to retire? '
retired_age = gets.chomp.to_i

years_remaining = retired_age - age
current_year = Date.today.year
retired_year = current_year + years_remaining

puts "It's #{current_year}. You will retire in #{retired_year}"
puts "You only have #{years_remaining} years of work to go!"
