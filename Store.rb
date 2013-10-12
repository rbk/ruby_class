# store

class Store

	attr_accessor :products

	def initialize
		@products = {	
			"eggs" 			=> 1.5,
			"bread" 		=> 3.0,
			"granola cereal"=> 3.4,
			"coffee" 		=> 2.3,
			"pie" 			=> 4.7
		}
		@cart_items = []
	end

	def add_to_cart(product)

		# avoid errors by converting to string
		product = product.to_s

		# add to cart unless product doesn't exist in store
		@cart_items.push product.downcase unless 
			!@products.include? product.downcase
	end

	def add_product( name, price )
		# use name as key and price as value for product
		@products[name] = price
	end

	def cart
		# return comma seperated list of cart items by joining array
		@cart_items.join(', ')
	end

	# add price of each product in cart and return value
	def cart_total
		total = 0
		for item in @cart_items
			total = total + @products[item].to_f
		end
		total
	end
end


store = Store.new #should create a new store object
store.add_to_cart "eggs" #should add eggs to the cart
store.add_to_cart "Pie" #should add pie to the cart
store.add_to_cart "Shirt" #should do nothing
store.add_product "shirt", 15 #should add $15 shirt to products hash
store.add_to_cart "Shirt" #should add shirt to cart
store.add_to_cart "bread" #should add bread to cart
puts store.cart # should output: eggs, pie, shirt, bread
printf "$%6.2f", store.cart_total #should output: $ 24.20