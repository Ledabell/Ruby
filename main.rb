# Dr. Li, TA: Jay Patel(jsp0053@auburn.edu)
# COMP3220 - 002 : Programming Languages
# Project_1
# Aleha Crumpton
# I used the provided resources to learn basic Ruby as well as the documentation for Ruby at ruby-doc.org to learn the usage for anything that was not covered.

require_relative 'search_controller.rb' 


# Initialize default list ...
defaultSearchList = ["toy story", 
						"spider man", 
						"star wars", 
						"harry potter", 
						"the hobbit", 
						"the hangover"]

# Let first search_controller get default list
controllerObject = SearchController.new(defaultSearchList)
puts "---Search Suggestions---"
puts "Current List: #{controllerObject.showList()}"

##### 
#
# 1.create endless loop 
# 2.get an input from terminal(console)
# 3.update search suggestion list
# 4.loop should end when user write "exit"
# 5.save updated "searchSuggestionList" to "data.txt" file
#
#####

user_input = "null"

while user_input != "exit"
	puts "\nNew Lookup: "
	user_input = gets.chomp.downcase
	if user_input != "exit"
		controllerObject.updateList(user_input)
	end
	puts "Updated List: #{controllerObject.showList()}"
end
controllerObject.saveListToFile()
