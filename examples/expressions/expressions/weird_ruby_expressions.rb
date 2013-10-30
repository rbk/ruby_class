# weird_ruby_expressions

dessert = "pie"
choices = []

choices = if dessert.empty? 
	[]
else
	if dessert == "pie"
		["key lime","lemon","pumpkin"]
	else
		if dessert == "cake"
			["chocolate","vanilla","carrot"]
		else
			[]
		end
	end
end

puts choices.inspect