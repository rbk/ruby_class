# test find with the photo class
$:.unshift File.dirname(__FILE__)

require "Photo"

p1 = Photo.new( "flower1.jpg" )
p1.tags = "Nature, flower, sun, bugs"

p2 = Photo.new( "shrubbery.jpg" )
p2.tags = "nature, Green"

p3 = Photo.new( "iphone.jpg" )
p3.tags = "electronics, Phone, gadget"

puts p1
puts p2
puts p3

puts "Found:"
Photo.find( "Nature" ).each do |photo|
	puts photo
end










