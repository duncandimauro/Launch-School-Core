def palindrome?(str)
  index = 0
  size = str.size

  while index < size / 2
    if str[index] != str[-(index+1)]
      return false
    end
    index += 1
  end

  true
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end
