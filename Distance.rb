# distance class
class Distance
 
	attr_accessor :value, :unit
 
	@@var # class variable
	@var # object variable
 
	# @km = "miles / 0.62136"
	# @miles = "km * 0.6214"
 
	def initialize( value, unit )
		@value = value
		@unit = unit
	end

	# def output_unit
	# 	if @unit.downcase == "m"
	# 		"Miles"
	# 	else
	# 		"Kilometers"
	# 	end
	# end
	def convert( value, unit )
		if unit.downcase == "m"
			# convert miles to kilos
			value / 0.621371
		elsif unit.downcase == "k"
			#convert km to miles
			value * 1.60934
		else
			value 
		end
	end

	def + test
		print test.value
		print test.unit
	end
 
end
 
d1 = Distance.new(1, "m")
d2 = Distance.new(1, "k")
puts d1 + d2

puts d1.value
puts d1.unit


