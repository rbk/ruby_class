# Blog post

require_relative "taggable"

class Post
	include Taggable

	attr_accessor :title, :body
	
	def initialize(title, body)
		@title = title
		@body = body
	end
	
	def to_s
		"#{title.upcase}\n#{body}\n"
	end
end