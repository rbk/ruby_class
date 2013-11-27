def show_divided_with_nine( num )
	begin
		value = 9/num.to_i
		puts "9 / #{num} = #{value}"
	rescue
		puts "#{num} is not a value we can divide by"
		raise
	end
end

def show_orig_number( num )
	puts "The value your enter is #{num}"
end

def show_output( input )
	begin
		show_divided_with_nine( input )
	rescue
		input = "invalid"
	end
	
	show_orig_number( input )
end

print "Enter a number: "
num = gets.chomp

begin
	show_output(num)
#rescue
#	puts "rescued in main"
end







