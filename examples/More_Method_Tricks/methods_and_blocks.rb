# methods_and_blocks

def test_method( p1, &b )
	if b
		puts "a block was given and it is a #{b.class}"
		b.call(p1)
		another_method(b)
	else
		puts "no block was given, we have #{b.class}"
	end

	if block_given?
		yield p1
	else
		puts "from method: #{p1}"
	end
end

def another_method( p )
	puts "start another method"
	p.call("from another method")
	puts "end another method"
end

test_method( "this is a test" ) {|p| puts "from block: #{p}"}
test_method( "this is a test" )

puts "-" * 30

say_hi = Proc.new {puts "Hi There!"}

def speaker1(what_to_say)
	what_to_say.call
end

def speaker2
	yield
end

# pass the proc as a "regular" object
speaker1(say_hi)

# & attaches proc to method as a block
speaker2(&say_hi)

# traditional block attached to method
speaker2 {puts "See you later!"}



















