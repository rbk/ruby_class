require_relative "TagError"

class Photo
	attr_accessor :filename

	@@photos = []
	
	def initialize( filename )
		@filename = filename
		@tags = []
		
		@@photos.push self
	end
	
	def self.find( tag )
		found = []
		
		@@photos.each do |photo|
			found.push photo if photo.has_tag tag
		end
		
		found
	end
	
	def filename=(fn)
		@filename = fn unless fn.empty?
	end
	
	def has_tag( tag )
		@tags.include?( tag.downcase )
	end
	
	def tags
		@tags.join( ", " )
	end
	
	def tags=( tag_string ) 
		@tags += tag_string.downcase.split( ", " )
	end
	
	def add_tag( tag ) 
		if self.has_tag( tag )
			raise TagError.new("tag is a duplicate","add",self,tag)
		end
		
		if tag.empty?
			raise TagError.new("tag is blank","add",self,tag)
		end
		
		@tags.push tag.downcase
	end
	
	def remove_tag( tag )
		unless self.has_tag( tag )
			raise TagError.new("tag doesn't exist","remove",self,tag)
		end
		
		@tags.delete tag.downcase
	end
	
	def to_s
		"#{@filename}, tags: #{tags}"
	end
end









