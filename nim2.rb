class Nim


end

def nim
  # Clear terminal 
  system ("cls")

  puts "\n<~~~~~~~~~~~~~~~~~~~~~~~~~~~~~>"
  puts "   Welcome to the game Nim!"
  puts "<~~~~~~~~~~~~~~~~~~~~~~~~~~~~~>\n\n"
  puts "How to play:"
  puts "----------------------------------------------------------"
  puts "The game starts with some number of stones in a pile.
The players take turns removing either one or two stones at
each move. The player who takes the last stone loses."            
  puts "----------------------------------------------------------"
end # end nim







def calculate_programs_move(stones)
    modulus = stones % 3
    return 2 if modulus == 0
    return 1 if modulus != 0
end

nim # init the game of nim

