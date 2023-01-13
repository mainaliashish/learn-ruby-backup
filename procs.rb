Prc = Proc.new { puts "Hello world" }

puts Prc.call

Prc_add = Proc.new { |x, y| puts x + y }

puts Prc_add.call(1,2)