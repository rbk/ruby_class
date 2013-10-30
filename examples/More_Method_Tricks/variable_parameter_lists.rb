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

def many_params( p1, p2, p3, p4, p5, p6, p7 )
	puts "p1 is #{p1}"
	puts "p2 is #{p2}"
	puts "p3 is #{p3}"
	puts "p4 is #{p4}"
	puts "p5 is #{p5}"
	puts "p6 is #{p6}"
	puts "p7 is #{p7}"
	puts '-' * 30
end

a = ["red","green","blue","purple","orange","yellow"]
many_params("white",a[0],a[1],a[2],a[3],a[4],a[5])
many_params("white", *a)
# many_params(*a)
















