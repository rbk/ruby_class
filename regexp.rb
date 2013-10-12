# regex.rb

ssn_regex = /^\d{3}-?\d{2}-?\d{4}$/
phone_regex = /^\(?\d{3}\)?-?\d{3}-?\d{4}$/

# puts "Enter your social security number: "
# ssn = gets
# if  ssn =~ ssn_regex
# 	puts "valid"
# else
# 	puts 'invalid'
# end

def valid_phone( phone )
	phone_regex = /^\(?\d{3}\)?-?\d{3}-?\d{4}$/
	if phone =~ phone_regex
		true
	else
		false
	end
end
# puts "Enter your phone number: "
# phone = gets
# if valid_phone( phone )
# 	puts "valid phone number"
# else
# 	puts "Not valid phone number"
# end 






class Validate
	attr_accessor

	def initialize()
	end

	def self.vphone( string )
		phone_regex = /^\(?\d{3}\)? ?-?\d{3} ?-?\d{4}$/
		if string =~ phone_regex
			true
		else
			false
		end
	end

	def self.vssn( string )
		ssn_regex = /^\d{3}-?\d{2}-?\d{4}$/
		if string =~ ssn_regex
			true
		else
			false
		end
	end

end
# puts Validate.vphone( '123 123-1234' )
# puts Validate.vssn( '123-12-1234' )










# ut after every constant
t = "I'm in tut but I want to be in english."
# puts t.gsub(/\b\w/) { | l | l.upcase }

vowels = /a|e|i|o|u|A|E|I|O|U[^:punct:]/
t.each_char do |c|

	if vowels =~ c
		puts "Vowel"
		#do nothing
	else
		puts "constant"

	end
end