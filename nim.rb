def nim
# Clear terminal 
system ("cls")

puts "\n]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~["
puts "   Welcome to the game Nim!"
puts "]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~[\n\n"
	puts "How to play:"
	puts "---------------------------------------------------"
	puts "The game starts with some number of stones in a pile. 
	The players take turns removing either one or two stones at each move. 
	The player who takes the last stone loses."
	# puts "Tip: If no remainder, remove 2. (If stones can be divided by 3 evenly)."
	puts "---------------------------------------------------"

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
		print "\nEnter an integer indicating the number stones the pile should start with: "
		stones = gets.to_i

		# Validate input.
		while stones.zero?
			print "\nPlease enter a valid number greater than 0: "
			stones = gets.to_i
		end

		# Get users choice on who should go first in a variable
		print "\nWho should go first? ( 0 = program, 1 = user ): "
		current_player = gets.to_i


		# The game lasts as long as there are stones
		while stones > 0

			# Keep track of the players turn
			if current_player == 0
				player_name = "Program"
				current_player = 1
			else
				player_name = "You"
				current_player = 0
			end

			

			if player_name == "Program"
				stones_to_remove = calculate_programs_move(stones)
				stones -= stones_to_remove

			else
				# If there is more than 1 stone, give user a choice
				if stones > 1

					print "Your turn (Enter 1 or 2 to remove stones) : "
					stones_to_remove = gets.to_i

					# Make sure user input is either 1 or 2
					while stones_to_remove < 1 || stones_to_remove > 2
		
							print "Please enter 1 or 2 to remove the stones: "
							stones_to_remove = gets.to_i
				
					end

				else
					# If there is only one stone left it is 
					# automatically selected for the user
					puts "\nSorry, there is only one stone left!"
					stones_to_remove = 1

				end
				# Decrement the amount of stones
				stones -= stones_to_remove
			end

			# Clear terminal 
			system ("cls")

			# Notify user what happened and how many stones there are left.
			# puts "\n##############################"

			# Pluralize the word stone if more that 1 is selected.
			if stones_to_remove > 1
				puts "#{player_name} removed #{stones_to_remove} stones"
			else
				puts "#{player_name} removed #{stones_to_remove} stone"
			end
			
			puts "Number of stones left: #{stones}"
			# puts "##############################\n"

		end

		# Declare the winner and ask user if he/she would like to play again.
		if stones == 0
			puts "You lose!" if player_name == "You"
			puts "You Win!" if player_name == "Program"
			print "Would you like to play again? ( y = Yes, n = No ): "
			play = gets.to_s.chomp
			puts "Thanks for playing!" if play != "y"
		end

	end # end until play equals "n"
end # end nim
nim # init the game of nim


