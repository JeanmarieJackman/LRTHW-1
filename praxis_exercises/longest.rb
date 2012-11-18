puts "Input sentence."
my_string = gets.chomp()

longest_word = ""
word_set = ""

my_string.split(" ").each do |word|
	if word.length > longest_word.length
		longest_word = word
	end
end

my_string.split(" ").each do |word|
	if word.length == longest_word.length
		puts word
	end
end

puts "#{longest_word.length} characters."
