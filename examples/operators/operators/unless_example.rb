# unless example

gravity = 9.9

if gravity != 9.8
	puts "this is uncomfortable"
else
	puts "feels like home"
end

unless gravity == 9.8
	puts "this is uncomfortable"
else
	puts "feels like home"
end

puts "good afternoon" if Time.now.hour > 12
puts "good afternoon" unless Time.now.hour <= 12









