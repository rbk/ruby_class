class TagError < RuntimeError
	def initialize( reason, action, photo, tag )
		@reason = reason
		@action = action
		@photo = photo
		@tag = tag
	end
	
	def to_s
		"For photo #{@photo.filename}, the tag \"#{@tag}\" could not be #{@action}ed because the #{@reason}"
	end
end