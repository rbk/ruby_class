# cart

class Cart
	def initialize( *init_items )
		@items = init_items
	end
	
	def items
		@items.join(', ')
	end
	
	def add( item )
		@items.push( item )
	end
	
	def items=( list )
		@items = list
	end
	
	def +( other_cart )
		Cart.new( self.items, other_cart.items )
	end
end

c1 = Cart.new( "eggs", "bacon" )
c2 = Cart.new

c2.add "butter"
c2.add "cream"

puts "cart 1: #{c1.items}"
puts "cart 2: #{c2.items}"

c3 = c1 + c2

puts "cart 3: #{c3.items}"

c4 = Cart.new("beef","pork")
c3 += c4  #c3 = c3 + c4

puts "cart 3: #{c3.items}"

c4.items = ["turkey","frogs"]

puts "cart 4: #{c4.items}"







