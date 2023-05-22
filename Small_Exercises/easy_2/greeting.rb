print 'What is your name? '
name = gets.chomp

if name.end_with?('!')
  puts ("Hello #{name.chop!}. Why are we screaming?").upcase!
else
  puts "Hello #{name}."
end

