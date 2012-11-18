# variables - cars in the following example.
# cars = 100
# The following is how you get a string to call up a variable.
# puts there are #{cars} cars available."

# format strings
# puts "Let's talk about %s" % my_name
# puts "He's %d inches tall." % my_height
# puts "Let's talk about %s. He's %d inches tall." [name1, height1]
# in the above examples, the s, d correspond with string or decimal.

# string interpolation
# hilarious = false
# joke_evaluation = "Isn't that joke so funny?! #{hilarious}"
# String interpolation are an alternative to format strings. It designates the injected variable
# inside the string itself rather than putting it at the end.

# escape sequences. puts troubling characters into the string.
# \n = puts a new line
# \' let's the computer know that you're not ending the string and prints the single or double quote after the backslash.
# \" ditto
# \\ prints a backslash.

# gets() / gets.chomp()
# asks the user for input. the .chomp designation removes the new line at the end.

# print - doesn't add a new line automatically. While puts does add a new line automatically.

# require - how you add features/libraries/modules to your script.
# ex: require 'open-uri'

# open()
#?

#<<PARAGRAPH
# allows you to type like normal.

# do - signals a function?

# script - another name for your .rb files
# ARGV - argument variable. it's a CONSTANT, meaning you shouldn't change its value once it is assigned.
# in the command line input "ruby ex15.rb" ex15.rb is the argument. 
# ARGV unpacks the variables you pass to your script from the argument.
# It just says, "Take whatever is in ARGV, unpack it, and assign it to all of these variables on the left in order."

# first, second, third = ARGV 

# puts "The script is called: #{$0}"
# puts "Your first variable is: #{first}"
# puts "Your second variable is: #{second}"
# puts "Your third variable is: #{third}"

 #ruby ex13.rb first 2nd 3rd
#The script is called: ex13.rb
#Your first variable is: first
#Your second variable is: 2nd
#Your third variable is: 3rd

# at ex. 14

#STDIN.gets
# You have use STDIN.gets() instead of gets() when there is something in the ARGV

# "Hard coding" means putting some bit of information that should come from the user as a string right in our program.

# File.open(filename)
# loads a file, for example if you wanted to load it into a variable. ie. txt = File.open(filename)

#You give a file a command by using the period, the name of the command, and parameters.

#.(read) the read command. which appears to just output the text of a file.

# close -- Closes the file. Like File->Save.. in your editor.
# read -- Reads the contents of the file, you can assign the result to a variable.
# readline -- Reads just one line of a text file.
# truncate -- Empties the file, watch out if you care about the file.
# write(stuff) -- Writes stuff to the file.

# $0 - the ruby file name, used if you're also loading an ARGV

# target.size?

# def signals a function. end

# IO::SEEK_SET
# rewinds the data set to the zero byte.




