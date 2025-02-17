
def eval_num(a)
  if a >= 0 && a <= 50
    puts "it is between 0 and 50"
  elsif a >= 51 && a <= 100
    puts "it is between 51 and 100"
  elsif a > 100
    puts "it is greater than 100"
  else
    puts "it is less than 0 or something else"
  end
end

a = gets.to_i

eval_num a
