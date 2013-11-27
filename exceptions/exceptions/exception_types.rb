# exception_types

begin
	v = 9 / 0
	v = nil
	v.upcase
rescue ZeroDivisionError, NoMethodError => exception
	puts "We either divided by 0 or had no method"
	puts "the exception object: #{exception}"
	puts "the exception object: #{exception.message}"
	puts "the exception object: #{$!}" #global var holding the exception object
#rescue ZeroDivisionError
#	puts "exception happens when you divide by zero..."
#rescue NoMethodError
#	puts "no such method..."
end