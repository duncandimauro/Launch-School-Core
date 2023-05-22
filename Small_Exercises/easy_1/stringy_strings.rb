
def stringy(num)
  str = ""

  num.times do |val|
    str_to_add = val % 2 == 0 ? '1' : '0'
    str << str_to_add
  end

  str
end

puts stringy(6)
