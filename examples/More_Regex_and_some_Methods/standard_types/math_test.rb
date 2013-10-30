# math test

#heredoc
head = <<HEAD
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<title></title>
		
		<style type="text/css">
			div {
				float: left;
				width: 50px;
				border-bottom: 1px solid black;
				margin: 20px;
				text-align: right;
			}
		</style>
		
	</head>
	<body>
HEAD

tail = <<TAIL
	</body>
</html>
TAIL


num1 = (0..10).to_a
num2 = (0..10).to_a

problems = []

num1.each do |n1|
	num2.each do |n2|
		problems.push "<div>#{n1}<br/> + #{n2}</div>"
	end
end

File.open( "math_test_output.html", 'w' ) do |file| 

	file.puts head
	problems.shuffle.each do |prob|
		file.puts prob
	end
	file.puts tail

end	
	
	
	
	
	
	
	
	