prompt = "> "
assignments = []
percentages = []
grades = []
counter = 1
final_grade = 0

puts "Input number of different types of assignments as an integer."
print prompt
assignment_number = gets.chomp().to_i

puts "Input student name."
print prompt
student_name = gets.chomp()

assignment_number.times do
	puts "Input title of assignment #{counter}."
	print prompt

	assignments.push(gets.chomp())
	counter += 1
end

puts assignments

counter = 0

assignment_number.times do
	puts "Input the percentage of final grade for #{assignments[counter]} in the form of an integer."
	print prompt

	percentages.push(gets().chomp("%").to_i)
	counter += 1
end

counter = 0
puts "These are the assignments and percentages that I have."

assignment_number.times do
	puts "#{assignments[counter]}, #{percentages[counter]}%"
	counter += 1
end

counter = 0
puts "Let's get #{student_name}'s grade for each assignment."

assignment_number.times do
	puts "Input #{student_name}'s grade for #{assignments[counter]}."
	print prompt
	grades[counter] = gets.chomp("%").to_i
	counter += 1
end

counter = 0
puts "Let's calculate the final grade for #{student_name}."
assignment_number.times do
	grades[counter] = grades[counter].to_f * ((percentages[counter])*0.01).to_f
	final_grade = final_grade + grades[counter]
	counter += 1
end

puts final_grade

