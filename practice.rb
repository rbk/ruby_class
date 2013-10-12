puts "\n]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~["
puts "   Welcome to the game Nim!"
puts "]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~["
# create a method to calculate the programs moves
def calculate_programs_move(stones)

	modulus = stones % 3
	return 2 if modulus == 0
	return 1 if modulus != 0

end

# This is the beginning of a while loop so the user can play
# the game more than once without rerunning the script.
play = "y"
while play == "y"

# store input into variable
print "\nEnter an integer indicating the number stones: "
stones = gets.to_i

# Validate input.
while stones.zero?
	print "\nPlease enter a valid number greater than 0: "
	stones = gets.to_i
end

# Get users choice on who should go first in a variable
print "\nWho should go first? ( 0 = program, 1 = user ): "
current_player = gets.to_i


while stones > 0

	if current_player == 0
		player_name = "Program"
		current_player = 1
	else
		player_name = "User"
		current_player = 0
	end

	

	if player_name == "Program"
		stones_to_remove = calculate_programs_move(stones)
		stones -= stones_to_remove

	else
		print "Your turn (Enter 1 or 2 to remove stones) : "
		stones_to_remove = gets.to_i
		while stones_to_remove.zero?
			puts "Please enter 1 or 2 to remove the stones: "
			stones_to_remove = gets.to_i
		end
		stones -= stones_to_remove
	end


	puts "\n############################"
	puts "#{player_name} removed #{stones_to_remove} stones"
	puts "Number of stones left: #{stones}"
	puts "##############################\n"

	if stones == 0
		puts "#{player_name} loses!!!"
		print "Would you like to play again? ( y = Yes, n = No ): "
		play = gets.to_s.chomp
		puts "Thanks for playing!" if play != ("y" || "Y" || "yes")
	end
end

end # end until play equals "n"


