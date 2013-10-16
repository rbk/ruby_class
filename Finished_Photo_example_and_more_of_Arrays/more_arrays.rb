# more arrays

colors = ["red","orange","yellow","green","blue"]
puts colors[4]
puts colors[-4]
puts colors[1,3].inspect
puts colors[2..4].inspect
puts colors[2...4].inspect
puts colors[-4..4].inspect

colors[2] = "black"
puts colors.inspect

colors[1..3] = "black"
puts colors.inspect

colors[12] = "purple"
puts colors.inspect

colors[1,4] = "white"
puts colors.inspect

colors[1,0] = "orange"
puts colors.inspect

colors[2,0] = ["light red","light green","light blue"]
puts colors.inspect










