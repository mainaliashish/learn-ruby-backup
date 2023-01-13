strings = ["one", "two", "four", "five"]
strings.each do |str|
  next unless str != 'five'
  puts 'Hello'
end