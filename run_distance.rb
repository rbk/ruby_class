# run distance

require_relative 'distance'




puts "Adding:"

d1 = Distance.new(1, "m")
d2 = Distance.new(1, "k")

puts d1 + d2 # 1.621371 Miles

d1 = Distance.new(2, "M")
d2 = Distance.new(2, "m")

d3 = d1 + d2
puts d3 # 4 Miles
puts d3.value # 4
puts d3.unit # m

d1 = Distance.new(3, "k")
d2 = Distance.new(3, "K")

puts d1 + d2 # 6 Kilometers

d1 = Distance.new(4, "k")
d2 = Distance.new(4, "m")

puts d1 + d2 # 10.43736 Kilometers

puts "-" * 30 ############






























puts "Subtracting:"

d1 = Distance.new(1, "m")
d2 = Distance.new(1, "k")

puts d1 - d2

d1 = Distance.new(2, "M")
d2 = Distance.new(2, "m")

d3 = d1 - d2
puts d3
puts d3.value
puts d3.unit

d1 = Distance.new(3, "k")
d2 = Distance.new(3, "K")

puts d1 - d2

d1 = Distance.new(4, "k")
d2 = Distance.new(4, "m")

puts d1 - d2

puts "-" * 30 ############

puts "Multiplying:"

d1 = Distance.new(1, "m")
d2 = Distance.new(1, "k")

puts d1 * d2

d1 = Distance.new(2, "M")
d2 = Distance.new(2, "m")

d3 = d1 * d2
puts d3
puts d3.value
puts d3.unit

d1 = Distance.new(3, "k")
d2 = Distance.new(3, "K")

puts d1 * d2

d1 = Distance.new(4, "k")
d2 = Distance.new(4, "m")

puts d1 * d2

puts "-" * 30 ############

puts "Dividing:"

d1 = Distance.new(1, "m")
d2 = Distance.new(1, "k")

puts d1 / d2

d1 = Distance.new(2, "M")
d2 = Distance.new(2, "m")

d3 = d1 / d2
puts d3
puts d3.value
puts d3.unit

d1 = Distance.new(3, "k")
d2 = Distance.new(3, "K")

puts d1 / d2

d1 = Distance.new(4, "k")
d2 = Distance.new(4, "m")

puts d1 / d2