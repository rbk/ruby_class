require_relative "TagError"

module Taggable
	include Enumerable
	
	def each
		@tags ||= []
		@tags.each {|tag| yield tag}
	end

	def has_tag( tag )
		@tags ||= []
		@tags.include?( tag.downcase )
	end
	
	def tags
		@tags ||= []
		@tags.join( ", " )
	end
	
	def tags=( tag_string ) 
		@tags ||= []
		@tags += tag_string.downcase.split( ", " )
	end
	
	def add_tag( tag ) 
		@tags ||= []
		if self.has_tag( tag )
			raise TagError.new("tag is a duplicate","add",self,tag)
		end
		
		if tag.empty?
			raise TagError.new("tag is blank","add",self,tag)
		end
		
		@tags.push tag.downcase
	end
	
	def remove_tag( tag )
		@tags ||= []
		unless self.has_tag( tag )
			raise TagError.new("tag doesn't exist","remove",self,tag)
		end
		
		@tags.delete tag.downcase
	end
end