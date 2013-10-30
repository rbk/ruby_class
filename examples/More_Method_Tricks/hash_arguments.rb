# hash_arguments

def test_method(p1,options)
		puts "p1 is #{p1}"
		puts "options are:"
		options.each {|k,v| puts "#{k} - #{v}"}
end

test_method( 'a', one: 1, two: 2, three: 3 )


# email({:to => 'betty', :from => 'bob'})
# email to: 'betty', from: 'bob'