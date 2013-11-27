# raising_exception

begin
	name = ""
	raise "Blank Name" if name.empty?
rescue => e
	puts "The problem is #{e}"
end

def some_method( *args )
	if args.size < 5
		raise ArgumentError, "not enough arguments", caller
		# raise( ArgumentError, "not enough arguments", caller() )
	end
end

begin
	some_method( 1,2,3,4 )
rescue ArgumentError => e
	puts e
end










