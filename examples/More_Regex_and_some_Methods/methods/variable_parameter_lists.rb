# variable_parameter_lists

def method_test( p1, p2, *p3 )
	puts "p1 is #{p1}"
	puts "p2 is #{p2}"
	puts "p3 is #{p3.inspect}"
	puts '-' * 30
end

method_test( 'a', 'b' )
method_test( 'a', 'b', 'c' )
method_test( 'a', 'b', 'c', 'd', 'e' )
method_test( 'a', 'b', 'c', 'd', 'e', 'f', 'g' )

def tag_writer(tag, content, *css)
	puts "<#{tag} style=\"#{css.join( '; ' )}\">#{content}</#{tag}>"
end

tag_writer( 'div', 'hello', 'color: red', 'font-size: 16px' )
tag_writer( 'p', 'This is a test' )


















