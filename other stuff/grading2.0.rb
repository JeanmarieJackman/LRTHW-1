class Grading

	def initialize
		@assignment_number = 0  
		@assignment_types = []
		@assignment_percentages = []
		@number_of_students = 0
		@roster = []
		@current_student = ""
		@student_counter = 0
		@current_student_grades =[]
		@current_student_final = 0.to_f
		@roster_with_final_grades =[]
	end

	def prompt()
		print "> "
	end

	def assignment_timer()
		return @assignment_number
	end

	def student_timer()
		return @number_of_students
	end

	def assignment!(number)
		@assignment_number = number
	end

	def student!(name)
		@current_student = name
	end

	def student_number!(number)
		@number_of_students = number
	end

	def assignment_types!(count, new_type)
		@assignment_types[count] = new_type
	end

	def roster!(count, new_student)
		@roster[count] = new_student
	end

	def assignment_percentages!(count, new_percentage)
		@assignment_percentages[count] = new_percentage
	end

	def grades!(count, number)
		@current_student_grades[count] = number
	end

	def student_counter!()
		@student_counter += 1
	end

	def roster_grades!(name, grade)
		@roster_with_final_grades.push ("#{name}, #{grade}")
	end

	def final_reset!()
		@current_student_final = 0
	end
# works
	def assignment_number_input()
		puts "Input number of different types of assignments."
		prompt()
			input = gets()
		if input.to_i >= 1 
			assignment!(input.to_i)
		else
			puts "Please put in the format of an integer, ex. 4."
			assignment_number_input()
		end
	end
# works
	def assignment_types_input()
		counter = 1
		assignment_timer().times do
			puts "Input title of assignment #{counter}."
			prompt()

			assignment_types!((counter-1), gets.chomp())
			counter += 1
		end
	end
#works
	def assignment_percentages_input()
		counter = 0		
		assignment_timer().times do
			puts "Input the percentage of final grade for #{@assignment_types[counter]}, ex. 15%."
			prompt()
			
			assignment_percentages!(counter, (gets.chomp("%").to_i))
			counter += 1
		end
	end
#works
	def assignment_percentages_check()
		puts "These are the assignments and percentages that I have." 
		counter = 0
		assignment_timer().times do
			puts "#{@assignment_types[counter]}, #{@assignment_percentages[counter]}%"
			counter += 1
		end

		puts "Are these correct?"
		prompt()

		input = gets.chomp()
		if input != "yes"
			puts input
			puts "Is it the assignments or the percentages that are incorrect?"
			input = gets.chomp()

			if input == "assignments"
				assignment_types_input()
				assignment_percentages_check()
			elsif input == "percentages"
				assignment_percentages_input()
				assignment_percentages_check()
			else
				assignment_percentages_check
			end
		end
	end
#works
	def student_number_input()
		puts "How many students are in your class"
		prompt()
		input = gets()

		if input.to_i >= 1
			student_number!(input.chomp().to_i)
		else
			puts "Please input as an integer."
			student_number_input()
		end
	end
#works
	def roster_input() 
		counter = 1

		student_timer().times do
		puts "Input name for student #{counter}."
		roster!((counter-1), gets.chomp())
		counter += 1
		end
	end
# works - gets a single student's grades and loads them in current student grades.
	def student_grade_input()
		counter = 0
		@current_student = @roster[@student_counter]
		puts "Let's get #{@current_student}'s grade for each assignment."

		assignment_timer().times do
			puts "Input #{@current_student}'s grade for #{@assignment_types[counter]}."
			prompt()
			grades!(counter, gets.chomp("%").to_i)
			counter += 1
		end
	end

#works
	def final_grade_calc()
		final_reset!()
		counter = 0
		puts "Let's calculate the final grade for #{@current_student}."

		assignment_timer().times do
			@current_student_grades[counter] = @current_student_grades[counter].to_f * ((@assignment_percentages[counter])*0.01).to_f
			@current_student_final = @current_student_final + @current_student_grades[counter]
			counter += 1
		end
		
		roster_grades!(@current_student, @current_student_final)
		puts @current_student_final
	end
end
#works
		def set_syllabus_paramaters()
		assignment_number_input()
		assignment_types_input()
		assignment_percentages_input()
		assignment_percentages_check()
	end
#works
	def set_roster_paramaters()
		student_number_input()
		roster_input()
	end

	def grade_calc()
			student_timer.times do
			student_grade_input()
			final_grade_calc()
			student_counter!()
		end
		puts @roster_with_final_grades
	end

session = Grading.new
session.set_syllabus_paramaters()
session.set_roster_paramaters()
session.grade_calc()