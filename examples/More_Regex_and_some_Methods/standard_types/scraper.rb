# extract urls from a website

require "open-uri"

if ARGV.size > 0
	url = ARGV[0]

	open(url) do |data|
		data.each_line do |line|
			if result = line.match(/href="(.*?)"/)
				if result[1] =~ /https?:\/\//
					puts result[1]
				else
					puts "#{url}#{result[1]}"
				end
			end
		end
	end
else
	puts "The URL of the site to scrape is required"
	puts "usage: ruby scraper.rb http://testsite.com"
end
	