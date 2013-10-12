# array_example

names = Array.new
names[0] = "Bernard"
names[1] = "Victrola"
names[3] = "Purdy"

puts "the first name is #{names[0]}"
puts "the second name is #{names[1]}"
puts "the third name is #{names[2]}"
puts "the tenth name is #{names[10]}"
puts "the forth name is #{names[3]}"

puts "the names array has #{names.size} elements"

puts names.inspect
print names