# distance class
class Distance
 
	attr_accessor :value, :unit # creates a getter function
 
	@@var # class variable
	@var # object variable
 
	@km = "miles / 0.62136"
	@miles = "km / 0.6214"
 
	def initialize( value, unit )
		@value = value
		@unit = unit
	end
 
end
 
d1 = Distance.new(2,"m");
puts d1.value