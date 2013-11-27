# modules_as_mixins

module TestModule
	RUBY = "Best Language Ever"
	
	def method1( *args )
		puts "This is method1 and I was passed #{args.inspect}"
	end
	
	def self.method2( num )
		puts "this is method2 and I was passed #{num}"
	end
end

class TestClass
	include TestModule

	def do_things
		puts "This is the do things method from the class"
	end
end

tc = TestClass.new
tc.do_things
tc.method1('a','c','b')

TestModule.method2(2)
puts TestModule::RUBY

puts "-"*30

module ModuleA
	def methodA
		puts "i'm method A"
	end
end

class ClassA
	#include ModuleA
	extend ModuleA
end

c1 = ClassA.new
# c1.methodA #works if module is included
ClassA.methodA #works if module is extended


























