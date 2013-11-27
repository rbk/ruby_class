# include_vs_extend

module ModuleA
	def self.included(base)
		base.extend(ClassMethods)
	end

	def methodA
		puts "methodA"
	end
	
	module ClassMethods
		def methodB
			puts "methodB"
		end
	end
end

class ClassA
	include ModuleA
	#extend ModuleA
end

# when included
#a = ClassA.new
#a.methodA
#a.methodB

# when extended
#ClassA.methodA
#ClassA.methodB

# when both are needed
a = ClassA.new
a.methodA

ClassA.methodB












