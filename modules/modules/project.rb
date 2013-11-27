# project

class Project
	include Comparable
	include Enumerable

	attr_accessor :name
	
	def initialize name
		@name = name
		@tasks = []
	end
	
	def add desc, time
		@tasks.push( Task.new(desc, time) )
	end
	
	def each
		@tasks.each {|task| yield task}
	end
	
	def <=>( other_project )
		time <=> other_project.time
	end
	
	def time
		@tasks.inject(0) {|total, task| total += task.time}
	end
	
	def to_s
		output = "PROJECT: #{name}\n"
		@tasks.each do |task|
			output += "\t#{task.desc} - #{task.time} minutes\n"
		end
		
		output
	end
	
	class Task
		attr_accessor :desc, :time
		
		def initialize desc, time
			@desc = desc
			@time = time
		end
	end
end