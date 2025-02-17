#p1

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each {|val| puts val}

#p2

arr.each {|val| puts val if val > 5}

#p3
new_arr = arr.select{|val| val % 2 == 1}

#p4

new_arr << 11        #add 11 to the end
new_arr.unshift(0)   #add 0 to the beginning

#p5

new_arr.pop
new_arr << 3

#p6
new_arr.uniq!

#p8

hash1 = {:name => "Mary"}
hash2 = {name: "Mary"}

#p9

h = {a:1, b:2, c:3, d:4}

my_value = h[:b]

h[:e] = 5

h.delete_if {|k, v| v < 3.5} #or h.select!{|k, v| v >= 3.5}

#p11
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#  Output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }


#p12

email = contacts["Joe Smith"][:email]
phone = contact_data["Sally Johnson"][:phone]

#p13

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|val| val.start_with?("s")}
arr.delete_if {|val| val.start_with?("s", "w")}

#p14

a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

new_a = []

a.each do |val|
  val.split.each {|word| new_a << word}
end

# could also do:
# new_a = a.map { |pairs| pairs.split }
# new_a = new_a.flatten
