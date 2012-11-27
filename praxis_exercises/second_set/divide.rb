def divide()
	puts "We're going to divide one number by another."

	puts "Input the numerator."
	numerator = gets.to_f

	puts "Input the denominator."
	denominator = gets.to_f

	if denominator == 0
		denominator = numerator	
		puts "#{numerator} divided by 0 equals 1."	
	else

	if numerator % denominator == 0
		numerator = numerator.to_i
		denominator = denominator.to_i
	end


	
	quotient = numerator / denominator

	puts "#{numerator} divided by #{denominator} equals #{quotient}."
end
end

divide()