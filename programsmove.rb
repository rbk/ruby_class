def calculate_programs_move(stones)

	modulus = stones % 3
	if modulus == 0
		return 2
	elsif modulus == 2
		return 1
	else
		return 1
	end  

end
puts calculate_programs_move( 10 )
