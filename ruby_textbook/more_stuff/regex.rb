#this will find the index of the letter b in the string "powerball"
"powerball" =~ /b/

#same with this
/b/ =~ "powerball"

# boolean_regex.rb
def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")
