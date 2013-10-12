# more_patterns

z1 = "12345-1234"
z2 = "12345"
z3 = "123456789" #invalid

if z3 =~ /^\d{5}(-\d{4})?$/
	puts "match"
end

p1 = "(918) 595-7060"

if p1 =~ /\((\d{3})\)\ (\d{3})-(\d{4})/
	puts "match"
	puts $1
	puts $2
	puts $3
end

t = "this is the title"
puts t.gsub(/\b\w/) {|letter| letter.upcase}

ip = "18.1.0.1"
puts ip.gsub(/\d{1,3}/) {|num| num.to_i + 1}
puts ip.gsub(/\d(\d)/) {|num| $1.to_i + 1}
















