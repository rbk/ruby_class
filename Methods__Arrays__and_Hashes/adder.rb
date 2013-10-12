# adder

def prompt_for_number( prompt )
	print prompt
	get_number
end

def get_number
	gets.to_i
end

num1 = prompt_for_number( "Enter the first number: " )
num2 = prompt_for_number( "Enter the second number: " )

puts "#{num1} + #{num2} = #{num1+num2}"