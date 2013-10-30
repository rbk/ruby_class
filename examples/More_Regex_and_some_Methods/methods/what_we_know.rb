# methods

class A
end

a1 = A.new
puts a1.class

def a1.new_method
	puts "test1"
end

a1.new_method

def testmethod( arga, argb, argc )
	def arga.another_method
		puts "another method"
	end
end

testmethod(a1,2,3)

a1.another_method







