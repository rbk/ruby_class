# photo_menu

require_relative "photo"

photos = []
photos.push( Photo.new 'flower.jpg' )
photos.push( Photo.new 'bridge.jpg' )
photos.push( Photo.new 'logo.jpg' )

choice = -1

until choice == 5
	
		puts "1. view all photos"
		puts "2. view tags"
		puts "3. add a tag"
		puts "4. remove a tag"
		puts "5. exit"
		
		choice = gets.to_i

		begin
			case choice
				when 1 then photos.each {|photo| puts photo}
				when 2 then 
					photos.each_with_index {|photo, i| puts "#{i+1}. #{photo.filename}"}
					print "view the tags for which image: "
					pic = gets.to_i
					puts photos[pic-1].tags
				when 3 then
					photos.each_with_index {|photo, i| puts "#{i+1}. #{photo.filename}"}
					print "add a tag to which photo: "
					pic = gets.to_i
					print "what tag to add: "
					tag = gets.chomp
					photos[pic-1].add_tag( tag )
					puts "The tag has been added"
				when 4 then
					photos.each_with_index {|photo, i| puts "#{i+1}. #{photo.filename}"}
					print "remove a tag from which photo: "
					pic = gets.to_i
					print "what tag to remove: "
					tag = gets.chomp
					photos[pic-1].remove_tag( tag )
					puts "The tag has been removed"
			end
		rescue TagError => e
			puts e
		end
end










