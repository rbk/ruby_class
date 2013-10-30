# band_names

class BandNames
	def initialize
		path = "#{File.dirname(__FILE__)}"
		name = "names.txt"
		path_and_name = "#{path}/#{name}"
	
		if File.exists?( path_and_name )
			@names_list = []
			File.open( path_and_name ) do |data|
				data.each_line do |name|
					@names_list.push name.chomp
				end
			end
		end
	end
	
	def list_names
		@names_list ||= []
		@names_list.join(', ')
	end
end







