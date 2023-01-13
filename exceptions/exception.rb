# syntax
=begin
begin
  Put the code at risk
rescue TypeError
  Take action
end
=end

# puts 10/0
# Only one exception is handled at a time.
begin
  x = 10/0
  puts x
  y = 2 + "x"
  puts y
rescue TypeError
  puts "Type Error is handled."
rescue ZeroDivisionError
  puts "Zero division error is handled."
end




