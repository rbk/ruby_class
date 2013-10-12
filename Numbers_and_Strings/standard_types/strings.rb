# strings

# s = "\tThis\sis\sa\stest\n\n\tc:\\ruby\\bin"
s = "Then he said \"hello\""
puts "s is a : #{s.class}" 

puts s

puts "end"

puts "--------------------------"

s = '\tThis\sis\sa\stest\n\n\n'
s = 'c:\\ruby\\bin'
s = 'This isn\'t the right answer'
puts s

puts "--------------------------"

puts %q(this isn't the answer)
puts %q(this is single quoted so \n will not work)
puts
puts %Q(this isn't the answer)
puts %Q(this is single quoted so \n will work)
puts
puts %q[this isn't the answer]
puts %Q.this is single quoted so \n will not work.














