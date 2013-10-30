# RestartMonitor

class RestartMonitor
	
	def initialize( filename )

		@results = []
		@filename = filename
		path = "#{File.dirname(__FILE__)}"
		file = "#{path}/#{filename}"
		if File.exists?( file )

			File.open( file ) do |data|
				data.each_line do |line|
					if line =~ /restarting/
						@results.push(line)
					end
				end 
			end
		else
			puts "#{path}/#{filename} does not exist."
		end
	end

	def show_restarts
		@results.each do |line|
			puts line[0..14]
		end
	end

end

if ARGV.empty? 
	filename = "syslog.txt"
else 
	filename = ARGV
end

r1 = RestartMonitor.new( filename );
r1.show_restarts
