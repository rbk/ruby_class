require_relative "taggable"

class Photo
	include Taggable
	
	attr_accessor :filename

	@@photos = []
	
	def initialize( filename )
		@filename = filename
		@@photos.push self
	end
	
	def filename=(fn)
		@filename = fn unless fn.empty?
	end
	
	def self.find( tag )
		found = []
		
		@@photos.each do |photo|
			found.push photo if photo.has_tag tag
		end
		
		found
	end
	
	def to_s
		"#{@filename}, tags: #{tags}"
	end
end









