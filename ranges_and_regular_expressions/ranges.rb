# ranges

puts (1..10).class
puts (1..10).to_a.inspect
puts (1...10).to_a.inspect
puts ('a'..'z').to_a.inspect
puts ('aa'..'zz').to_a.inspect

r = (3..9)
puts "does the range include 9: #{r.include? 9}"
puts "does the range include 9: #{r === 9}"
puts "the max of the range is: #{r.max}"
puts "the min of the range is: #{r.min}"

r.each {|num| puts num if num < 6}

new_r = r.reject {|num| (num % 2) == 0}
puts new_r.class
puts new_r

const = ('a'..'z').reject {|c| c =~ /[aeiou]/}
puts const.inspect

puts "------------------------------"

a = %w{a b c d e f g h i j k l m n o}
puts a.inspect

a.each {|c| puts c if c == 'a' .. c == 'd'}










