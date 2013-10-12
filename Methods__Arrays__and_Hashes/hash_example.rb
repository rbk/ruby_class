# hash_example

h = Hash.new('nothing here')
h['test'] = 'this is a test'

puts h['test']
name = "Victrola"
h[name] = "persons name"
puts h[name]
puts h["Victrola"]

h[4.3] = "9.6 is another number"
puts h[4.3]

puts h['secret']

puts h.inspect