prompt = "> "

puts "We are going to compare two numbers and find the smallest."
puts "Input your numbers."

print prompt; first = gets.chomp() 
print prompt; second = gets.chomp()

def evaluate(x, y)

	if 	x > y
		puts "#{x} is greater than #{y}."

	elsif x < y
		puts "#{x} is less than #{y}."
			
	else x == y
		puts "The numbers are the same!"
	end
end

puts evaluate(first, second)