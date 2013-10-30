# return_values

def methodA( sentence )
	sentence.each_char do |c|
		if c == 'a'
			return c
		end
		
		puts c
	end
end

value = methodA( "This is a sentence" )
puts "returned value from methodA is #{value}"

puts "-" * 30

def neighbors1(num)
	return num - 1, num + 1
end

def neighbors2(num)
	[num - 1, num + 1]
end

before, after = neighbors1(9)
puts "#{before} 9 #{after}"

value = neighbors1(9)
puts "#{value.inspect}"

before, after = neighbors2(7)
puts "#{before} 7 #{after}"

value = neighbors2(7)
puts "#{value.inspect}"













