def triangle(size)
  size.times { |iteration| puts ' ' * (size-iteration) + '*' * iteration}
end

triangle(9)
