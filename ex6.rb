# this line stores the string in x but flags 10 as a number.
x = "There are #{10} types of people."
#stores binary as a variable
binary = "binary"
#stores don't as a variable
do_not = "don't"
#creates a string using string interpolation that draws upon the previous two variables.
y = "Those who know #{binary} and those who #{do_not}."

#prints x
puts x
#prints y
puts y

#prints a string that contains a variable using string interpolation.
puts "I said: #{x}."
#ditto
puts "I also said: '#{y}'.'"

#stores hilarious with a false condition
hilarious = false
#stores a string that contains a joke evaluation in a variable using string interpolation.
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

#prints said joke to the screen.
puts joke_evaluation
#slices a longer string into two pieces and the prints them side by side.
w = "This is the left side of..."
e = "a string with a right side."

puts w + e

#extra credit - 
#2. lines 4, 9, 10, and 13/15
#3. see above.
#adding w and e together makes a longer string because it puts them side by side, creating the illusion of a longer string.