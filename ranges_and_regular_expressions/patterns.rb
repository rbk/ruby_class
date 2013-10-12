# patterns

cars = <<END
2004 civic $6000
2005 mustang $10000000
1968 scorpio $5
1999 microspec $13
2001 spec $899
2009 accord-hybrid $23000
2007 charger $17000
1988 accord $2007
END

def search_cars( cars, pattern )
	found = false
	puts "-----------------------------"
	puts "pattern: #{pattern.source}"
	
	cars.each_line do |line|
		if line =~ pattern
			puts line.chomp
			found = true
		end
	end
	
	puts "No Match" if not found
	
	puts "-----------------------------"
end

search_cars(cars, /\$[]/)

# 0-9					\d		[:digit:]
# ^0-9 				\D
# \t\r\n\f		\s		[:blank:]
# 0-9a-zA-Z		\w		[:alnum:]
# a-zA-Z						[:alpha:]

#										[:punct:]









