authors = {"Charles Dickens" => "1870", "William Thackeray" => "1863", "Anthony Trollope" => "1882", "Gerard Manley Hopkins" => "1889"}

authors.each do |author, year|
  puts author.to_s + " died in " + year.to_s
end