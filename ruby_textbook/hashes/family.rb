family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate = family.select {|k, v| k == :sisters || k == :brothers}

arr = immediate.values

p arr

family.each {|k, v| puts k}

family.each {|k, v| puts v}

family.each {|k, v| puts "#{k} #{v}"}

if family.value?(["bob", "joe", "steve"])
  puts "all uncles accounted for"
else
  puts "nope"
end
