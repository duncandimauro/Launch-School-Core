

i = 0
loop do
  i = i + 2
  puts i
  if i == 10
    break       # this will cause execution to exit the loop
  end
end

puts '------------------'

i = 0
loop do
  i = i + 2
  if i == 4
    next
  end
  puts i
  if i == 10
    break
  end
end

puts '------------------'

loop {
  puts 20
  break
}

puts '------------------'

x = 20

while x >= 0
  puts x
  x = x - 1
end

puts '------------------'

#WHILE LOOP DOES NOT HAVE ITS OWN SCOPE

x = 0
while x < 5
  y = x * x
  x += 1
end

puts y # 16

puts '------------------'

x = 14

until x < 0
  puts x
  x -= 1
end

puts '------------------'

y = 12

for i in 1..y do
  puts y - i
end

loop do
  puts "Provide text, or type 'STOP'"
  txt = gets.chomp
  if txt == 'STOP'
    puts "Program stopping now"
    break
  end
  puts "you typed: #{txt}"
end

def countdown(num)
  if num >= 0
    puts num
    countdown(num-1)
  end
end

puts "Counting down:"
countdown(20)
