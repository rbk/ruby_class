# test_projects

require_relative "project"

get_lunch = Project.new "Get Lunch"
get_lunch.add "Decide on lunch food", 1
get_lunch.add "Walk to lunch place", 14
get_lunch.add "Wait in line", 7
get_lunch.add "Place", 0.5
get_lunch.add "Wait for order", 4
get_lunch.add "Eat lunch", 0.3
get_lunch.add "Walk back to work", 14

puts get_lunch

grade_lab = Project.new "Grade Lab"
grade_lab.add "access lab submission page", 0.1
grade_lab.add "download lab", 0.3
grade_lab.add "access lab in editor", 0.2
grade_lab.add "run lab", 0.5
grade_lab.add "run lab 10 more times", 2
grade_lab.add "mark grade", 0.3
grade_lab.add "write comments", 2

puts grade_lab

print "lunch takes longer than grading 1 lab: "
puts get_lunch > grade_lab

puts "get lunch takes #{get_lunch.count} steps"
puts "grade lab takes #{grade_lab.count} steps"















