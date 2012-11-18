puts "Seconds: "
seconds = STDIN.gets.chomp().to_f


minutes = seconds / 60
hours = minutes / 60
days = hours / 24
years = days / 365

puts years