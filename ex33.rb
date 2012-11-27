i = 0
numbers = []

def function (array)
for i in (0...6)
	puts "At the top i is #{i}"
	array.push(i)

	puts "Numbers now: #{array}"
	puts "At the bottom i is #{i}"
end
end

function(numbers)
puts "The numbers: "

for num in numbers
	puts num
end