def multiply()

	puts "We're going to multiple two numbers."
	puts "Input first number."
	x = gets.to_i

	puts "Input second number."
	y = gets.to_i


	product = x * y

	puts "#{x} multiplied by #{y} equals #{product}."
end

multiply()