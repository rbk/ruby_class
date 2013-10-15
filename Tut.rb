class Tut

	attr_accessor # comma separated list of class vars i.e :name, :place, :time

	@@array = []
	@@tut = 'ut'
	@@consonants = /[^aeiouAEIOU[:punct:]\ ]/
	@@consonants_ut = /([^aeiouAEIOU[:punct:]\ ]ut)/
	# @@tut_string = ''

	def initialize( string )
		@tut_string = string
		puts @tut_string
	end

	def self.to_tut( string )
		puts string.gsub!( @@consonants ) { |match|  "#{match}#{@@tut}" }
	end

	def self.to_english( string )
		# puts @tut_string
		puts string.gsub!( @@consonants_ut ) { | match |  "#{match}".sub("ut", "") }
		# yield string
	end


end

# TEST BLOCK
Tut.to_tut( "Wow! Look at this get converted to Tut!" ) { |c| print c }
# should outout : Wutowut! Lutookut atut tuthutisut gutetut cutonutvuteruttutedut tuto Tututut!

tut_string = ""
Tut.to_tut( "I'm in tut but I want to be in english." ) { |c| tut_string += c }
puts tut_string
# should output : I'mut inut tututut bututut I wutanuttut tuto bute inut enutgutlutisuthut.

Tut.to_english( tut_string ) { |c| print c }
# should output : I'm in tut but I want to be in english.
