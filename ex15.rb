# This sets the filename as the file from the command line.
filename = ARGV.first
# This sets up the prompt
prompt = "> "
# This sets the txt variable to open the filename variable that you passed it from the command line.
txt = File.open(filename)

# Outputs the following line
puts "Here's your file: #{filename}"
# Outputs the txt variable using the read command with no parameters.
puts txt.read()

# Prompts the user to type it again.
puts "I'll also ask you to type it again:"
# Prints the prmopt
print prompt
# Asks for the user input and then takes that and passes it to the variable file_again
file_again = STDIN.gets.chomp()
# Passes the inputted filename provided by the user to txt_again.
txt_again = File.open(file_again)
# Outputs the variable txt_again
puts txt_again.read()