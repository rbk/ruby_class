# qs_are_bad

class QPhobiaError < RuntimeError
	def initialize( string )
		@offending_string = string
	end
	
	def to_s
		"This string, \"#{@offending_string}\" contains the letter q"
	end
end

input = "this is a string that contains the letter q"

begin

	if input =~ /q/
		raise QPhobiaError.new( input )
	end

rescue QPhobiaError => qerror
	puts "That bad letter was used"
	puts qerror.to_s.gsub( 'q', 'X' )
end









