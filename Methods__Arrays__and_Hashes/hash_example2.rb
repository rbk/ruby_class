# hash_example2

ruby_class = {
	'instructor' => 'Noah',
	'days' => 'TR',
	'students' => [
		'Bernard',
		'Victrola',
		'Purdy'
	]
}

puts ruby_class.inspect

puts ruby_class['instructor']
puts "class meets on #{ruby_class['days']}"

puts "the first student is #{ruby_class['students'][0]}"

students = ruby_class['students']
puts "The second student is #{students[1]}"
