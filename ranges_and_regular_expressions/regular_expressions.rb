# regular expressions

p1 = /^.*\.$/
puts p1.class

p2 = Regexp.new( '^[a-z]+$' )
puts p2.class

p3 = %r{^[^a-z]+$}
puts p3.class

# =~, if match returns position of the start of the match
puts p1 =~ "this is a sentence."

# =~, if no match, returns nil
puts (p2 =~ "this is a sentence.").class

# .match if match, returns the matching part of the string
puts p1.match("this is sentence.")

# .match if no match, returns nil
puts p1.match("this is sentence").class

puts "allcharswithnospaces".match(p2)
puts "all chars with space".match(p2).class

puts (p3 !~ "321321321")
puts (p3 !~ "abc")

if "Bernard M. Wrangle" =~ /\s[A-Z]\.\s/
	puts "match found"
	puts "matched text: #{$&}"
	puts "before the match: #{$`}"
	puts "after the match: #{$'}"
else
	puts "no match found"
end

















