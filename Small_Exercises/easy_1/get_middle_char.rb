def center_of(str)
  size = str.length
  size % 2 == 0 ? str[size / 2 - 1] + str[size / 2] : str[size/2]
end

puts center_of('I love ruby')
puts center_of('Launch School')
puts center_of('Launch')
puts center_of('Launchschool')
puts center_of('x')
