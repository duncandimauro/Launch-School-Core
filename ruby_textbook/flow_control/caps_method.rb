
def caps_method(str)
  str.length > 10 ? str.upcase : str
end

puts "input a string"
a = gets

puts caps_method(a)
