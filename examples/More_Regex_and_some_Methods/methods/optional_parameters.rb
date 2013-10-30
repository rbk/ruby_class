# optional_parameters

def parameter_test(param1, param2 = "default2", param3 = "default3")
	puts "param1 is #{param1}"
	puts "param2 is #{param2}"
	puts "param3 is #{param3}"
	puts '-' * 30
end

parameter_test( 'a', 'b', 'c' )
parameter_test( 'a', 'b' )
parameter_test( 'a' )

