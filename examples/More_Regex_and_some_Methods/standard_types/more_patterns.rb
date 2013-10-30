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

pattern = /(\d{3})-(\d{3})-(\d{4})/
pn1 = "918-595-7000"
pn2 = "981-595-7001"

d1 = pattern.match( pn1 )
puts d1.class
puts "matchdata: #{d1}"
puts "0 = #{d1[0]}"
puts "1 = #{d1[1]}"
puts "2 = #{d1[2]}"
puts "3 = #{d1[3]}"

d2 = pattern.match( pn2 )

if d1[1] == d2[1]
	puts "the phone numbers have the same area code"
end














