# Dr. Li, TA: Jay Patel(jsp0053@auburn.edu)
# COMP3220 - 002 : Programming Languages
# Project_1
# Aleha Crumpton

# Search controller class
class SearchController

	attr_accessor :searchSuggestionList
    attr_accessor :file_list
    
    # Initialize search controller with given search list
	def initialize(search_list = [])
        # Check for existing data.txt, take given list if file doesn't exist
        if File.exists?("data.txt") == false
            File.new("data.txt", "w")
        end
        #Read from file and set searchSuggestionList to the appropriate list
        readFile()
        if @file_list == []
            @searchSuggestionList = search_list
        else
            @searchSuggestionList = @file_list
        end
  	end

	def showList()
		@searchSuggestionList
	end

    # Adds movie to beginning of list if it isn't already there and moves it to the front if it is there
	def updateList(movie_name)
		if duplicate(movie_name) == false
			list_place = 1
			temp_list = []
			temp_list[0] = movie_name
			@searchSuggestionList.each do |item|
				temp_list[list_place] = @searchSuggestionList[list_place-1]
				list_place += 1
			end
			@searchSuggestionList = temp_list
        else
            temp_list = []
            temp_list[0] = movie_name
            list_place = 0
            temp_place = 1
            @searchSuggestionList.each do |item|
                if item == movie_name
                    list_place += 1
                    else
                    temp_list[temp_place] = item
                    temp_place += 1
                end
                list_place += 1
            end
            @searchSuggestionList = temp_list
        end
	end

	def saveListToFile()
		list_to_string = ""
        @searchSuggestionList.each do |item|
           list_to_string << item
           list_to_string << "\n"
        end
        out_file = File.new("data.txt","w")
        out_file.puts(list_to_string)
	end

    # Checks to see if movie is already listed
	def duplicate(name)
		dupe = false
		@searchSuggestionList.each do |item|
			if item == name
				dupe = true
			end
		end
		dupe
	end

    # Opens the data.txt file and adds each entry into a temporary list. If this list is empty, the list given on initialization is used as the search suggestion list
    def readFile()
        @file_list = []
        file_list_place = 0
        data_file = File.open("data.txt")
        data_file.each do |line|
           file_list[file_list_place] = line.chomp
           file_list_place += 1
        end
    end
end


