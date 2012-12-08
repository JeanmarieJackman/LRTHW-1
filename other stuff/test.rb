prompt = "> "
counter = 0


def assignment_number_input()
	assignment_number = 0
	
	puts "Input number of different types of assignments."
	print prompt

	if gets.chomp().to_i? == true
	assignment_number = gets.chomp()
	
	else
		puts "Please put in the format of an integer, ex. 4."
	end

end

assignment_number_input()
puts assignment_number