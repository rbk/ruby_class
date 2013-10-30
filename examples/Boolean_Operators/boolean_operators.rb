# boolean_operators

# ==
# ===
# <=>

x = 9
y = 7

puts x <=> y #=> 1
puts y <=> x #=> -1
puts x <=> 9 #=> 0

if (x <=> 5) == 1  # x > 5
	puts "your value is greater than 5"
end

puts "hello" == "hello"
puts "hello".equal?( "hello" )

msg = "test"
puts msg.equal?( msg )

puts "hello".eql?( "hello" )

puts 7 == 7.0
puts 7.equal?( 7.0 )
puts 7.eql?( 7.0 )










