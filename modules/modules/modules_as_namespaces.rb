# modules_as_namespaces

module SampleModule
	MagicNumber = 42
	
	# instance method (only available when mixedin)
	def methodA
		puts "this is method A"
	end
	
	# "module method", like a class method but for a module
	def self.methodB
		puts "this is method B"
	end
end

SampleModule.methodB
# SampleModule.methodA #instance method not available

module MathRelated
	PI = 3.14159

	def self.times(x, y)
		x * y
	end
end

module Calendar
	def self.times(x, y)
		Time.now
	end
end

module Dessert
	PI = "Keylime"
end

puts MathRelated.times(2,3)
puts Calendar.times(2,3)

puts MathRelated::PI
puts Dessert::PI











