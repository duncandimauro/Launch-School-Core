
def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end



def take_block2(number, &block)
  block.call(number)
end

number = 42
take_block2(number) do |num|
  puts "Block being called in the method! #{num}"
end

#proc example

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in a method!"
end

take_proc(proc)
