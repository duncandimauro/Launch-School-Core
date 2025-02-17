arr = [1, 3, 5, 7, 9, 11]
number = 4

ans = arr.include?(number)

puts ans


arr1 = ["b", "a"]
arr1 = arr1.product(Array(1..3))
arr1.first.delete(arr1.first.last)

arr2 = ["b", "a"]
arr2 = arr2.product([Array(1..3)])
arr2.first.delete(arr2.first.last)

my_arry = ['a', 'b', 5, [2, 3], 'meme', 5.25]

my_arry.each_with_index do |val, i|
  puts "The value at index #{i} is #{val}"
end

og_arry = [10, 4, 20, 8, 5, 2]

modified = og_arry.map {|val| val += 2 }

p og_arry
p modified
