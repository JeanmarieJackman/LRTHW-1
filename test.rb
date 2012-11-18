filename = ARGV.first
script = $0

txt = File.open(filename)
puts txt.read()