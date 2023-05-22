def print_in_box(str)

  length = str.length

  puts '+-' + ('-' * length) + '-+'
  puts '| ' + (' ' * length) + ' |'
  puts '| ' + str + ' |'
  puts '| ' + (' ' * length) + ' |'
  puts '+-' + ('-' * length) + '-+'
end

print_in_box('To boldly go where no one has gone before.')
