def print_name()
	prompt = "> "

	puts "Hello! What is your name?"
	prompt; name = gets.chomp

	puts "Hello, #{name}"
end

print_name()