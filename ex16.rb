# stores the filename that we loaded into the file from the commandline.
filename = ARGV.first
# empties out the script.?
script = $0

# Tells the user what is going on and offers them an out.
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

# asks for input from the user. A return advances.
print "? "
STDIN.gets

# tells the user what is happening.
puts "Opening the file..."
# Opens the designated file that was loaded on line 2 and puts it in target. not sure I know what the w does.
target = File.open(filename, 'w')

# Tells the user what is happening.
puts "Truncating the file. Goodbye!"
# empties the file.
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close()