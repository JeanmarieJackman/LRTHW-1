# this line puts a string with the following content.
puts "I will now count my chickens:"

# this line prints a string that says "hens" then performs the math operation on the next line, starting with the division.
puts "Hens", 25 + 30 / 6
# prints "Roosters" then does the math on the next line. 25 times three is 75, the modulus of which is 3 = 100-3=97
puts "Roosters", 100 - 25 * 3 % 4

#prints the content
puts "Now I will count the eggs:"
# does all that math. 1 + 4 % 2 - 1 /4 + 6
puts 3 + 2 + 1 - 5 + 4 % 2 -1 / 4 + 6
# prints is it truth 
puts "Is it true that 3 + 2 < 5 - 7?"
#the following constructs an equation using the lesser than which turns out to be false: 5 < -2 is false, so it outputs false.
puts 3 + 2 < 5 - 7
#uses it as a calculator
puts "What is 3 + 2?", 3 + 2
puts "What is 5 - 7", 5 - 7
#prints both pieces of content
puts "Oh, that's why it's false."

puts "How about some more."
#the following lines start a dialogue with the calculator and then compares the pieces of code.
puts "Is it greater?", 5 > -2
puts "Is it greater or equal?", 5 >= -2
puts "Is it less or equal?", 5 <= -2