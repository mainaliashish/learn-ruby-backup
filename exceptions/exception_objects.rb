RETRY_LIMIT = 3

y = 0
begin
  attempts = attempts || 0
  x = 10/y
  puts x
rescue StandardError => e
  y = 2 if attempts === 1
  attempts += 1
  # puts e.class
  puts e.message
  # puts e.backtrace
  retry if attempts < RETRY_LIMIT
ensure
  puts "This code is always executed"
end