# Project 1

Project 1, a program that maintains a serach suggestion list based on movies input by the user.

* Will create a new data.txt file and use the default search list if one is not present already.
* The searches are maintained in chronological order in the suggestion list and are case insensitive.
* Searches for movies that already exist in the list will bring that movie to the front of the list.
* The user can type "exit" as the New Lookup to end the program and save the list.
* A pre-populated search suggestion list is provided as well. To use it, delete any existing file called "data.txt" and rename the "ex_data.txt" file to "data.txt".
* Because the list is saved upon the user entering "exit", the list will not be updated for that session if the program is forcefully terminated.

### Quick start
**Make sure you have installed Ruby appropriately for your operating system such that you can use the latest version of Ruby to run the project files**

> Clone/Download the solution then run `main.rb`

```

# Download all files from canvas

# For Mac OSX
$ ruby main.rb

```

# Table of Contents
* [API Intro](#api-intro)
* [Author](#author)

#### API Intro

This class handles all aspects of the search suggestion list. That is,reading the previous searches from the data.txt file, 
maintaining the list in chronologicl order of search, checking for duplicates, and saving the updated list to the file.
```
Class SearchController
.
.
end
```

This method calls the duplicate() function and if the movie_name given exists in the list, the movie is moved to the front 
of the list. If it doesn't, it is added to the front of the list.
```
def updateList(movie_name)	
.
.
end
```

This method iterates through the updated search suggestion list, appends each movie to a string and saves that string to data.txt.
```
def saveListToFile()	
.
.
end
```
Checks if the movie_name given already exists in the search suggestion list. Referenced by updateList(movie_name).
```
def duplicate(movie_name)	
.
.
end
```
Iterates through the lines of data.txt and saves each movie name to the search suggestion list for that session.
```
def readFile()	
.
.
end
```
___

## Author
 [Aleha Crumpton](/LICENSE)
