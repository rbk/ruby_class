# case_statement

case Time.now.wday
	when 0 then puts "Sunday"
	when 1 then puts "Monday"
	when 2 then puts "Tuesday"
	when 3 then puts "Wednesday"
	when 4 then puts "Thursday"
	when 5 then puts "Friday"
	when 6 then puts "Saturday"
	else puts "I don't know that day"
end

name = ""

case
	when name == "noah" then puts "Noah-wan Kenobi?"
	when name =~ /^[A-Z][\w]+$/ then puts "Nice Name!"
	when name =~ /^[\w]{2,}$/ then puts "No capital letter?"
	else puts "I have not response to that"
end












