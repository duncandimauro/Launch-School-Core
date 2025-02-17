print 'Please write a word or multiple words: '
str = gets.chomp
char_count = str.size - str.count(' ')

puts "There are #{char_count} characters in \"#{str}\"."
