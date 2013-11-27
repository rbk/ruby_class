# test_photos_and_posts

require_relative "Photo"
require_relative "Post"

photo1 = Photo.new( "bridge.bmp" )
photo1.add_tag "river"
photo1.add_tag "road"
photo1.add_tag "cement"
photo1.add_tag "bridge"
photo1.add_tag "music"
photo1.remove_tag "music"

puts photo1

photo1.each {|tag| puts "tag: #{tag}"}

print "does photo1 include river? "
puts photo1.include? "river"

print "how many tags for photo1? "
puts photo1.count

puts "-"*50


post1 = Post.new("Modules are Weird","Wanna hear about something weird...")
post1.add_tag "tech"
post1.add_tag "weirdness"

puts post1.tags

puts post1












