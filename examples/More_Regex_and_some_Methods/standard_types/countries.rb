# countries

require 'open-uri'

class String
	def my_title_style
		self.split(" ").map {|word| word.capitalize}.join(" ")
	end
end

class CountryCode

	@@countries = {}

	open( "http://www.iso.org/iso/country_names_and_code_elements_txt" ) do |data|
		data.each_line do |line|
			if line.chomp! =~ /.+;[A-Z]{2}$/
				name, code = line.downcase.split(";")
				@@countries[code] = name
			end
		end
	end

	# @@countries[abbr].split(" ").map {|word| word.capitalize}.join(" ")
	
	def self.find( abbr )
		@@countries[abbr].my_title_style
	end

end


puts CountryCode.find('us')


#open( "output.txt", "w" ) do |file|
#		file.puts "us is #{countries['us']}"
#		file.puts "io is #{countries['io']}"
#		file.puts "sx is #{countries['sx']}"
#		file.puts "re is #{countries['re']}"
#end

