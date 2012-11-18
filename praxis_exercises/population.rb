puts "Population after how many years?"
target = gets.chomp().to_i + 1

population = [0, 10]


target.times do |year|
	population.push (population[year] + population[year + 1])
end

puts population[target]