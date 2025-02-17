
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan']

names.each do |name|
  name = name.upcase
  puts name
end

names.each { |name| puts name }
