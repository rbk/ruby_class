# converter

def convert( container )
	if container.class == Hash
		new_container = []
		p = Proc.new{|array, (k,v)| array.push([k,v]) }
	else
		new_container = {}
		p = Proc.new{|hash, (v1,v2)| hash[v1] = v2; hash }
	end
	
	# &p is the proc/block being supplied to the inject iterator
	container.inject(new_container, &p)
end

array = convert( {one: 1, two: 2, three: 3} )
puts "as array: #{array.inspect}"
# [[:one, 1],[:two, 2],[:three, 3]]

hash = convert( array )
puts "as hash: #{hash.inspect}"
# {one: 1, two: 2, three: 3}