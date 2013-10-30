# and_and_or

# && and 
# || or

# &&

x = 1
puts (x > 0 and x < 10)
puts (x > 0 && x < 10)

ans = x && 10
puts ans			#=> 10

x = nil
ans = x && 10
puts ans 			#=> nil

# ||

name = "amanda"
puts (name == "amanda" or name == "ziller")
puts (name == "amanda" || name == "ziller")

ans = name || "default"
puts ans				#=> amanda

name = nil
ans = name || "default"
puts ans				#=> default

if name == nil
	name = "default"
end

name1 = name1 || "purdy"
puts name1

name1 = "bernard"
name1 = name1 || "purdy"
puts name1

# name2 = "bernard"
name2 ||= "purdy"
puts name2













