fibonacci = [1, 1]
even_sum = 0
counter = 0
while (fibonacci[counter] + fibonacci[counter + 1]) < 4000000 
	
	if (fibonacci.last % 2) == 0
		even_sum = even_sum + fibonacci.last
	end

		fibonacci.push (fibonacci[counter] + fibonacci[counter + 1])
		counter += 1
end

if (fibonacci.last % 2) == 0
		even_sum = even_sum + fibonacci.last
	end
	
puts fibonacci.last
puts even_sum