#!/usr/env/bin ruby

time = Time.new

puts "Current time is #{time.inspect}"
puts time.year
puts "-" * 30
puts time.utc
puts time.localtime
puts time.strftime("%Y-%m-%d %h:%M:%S")
puts time.strftime("%Y/%m/%d %H:%M:%S")
puts time.strftime("%B %Y %A")
puts "-" * 30

# puts time.month
# puts time.day
# puts time.wday
# puts time.yday
# puts time.hour
# puts time.min
# puts time.sec
# puts time.usec
# puts time.zone


local_time = Time.local(2022, 1, 7)
puts local_time

time_utc = Time.utc(2022, 1, 7, 6, 8)
puts time_utc

values = time.to_a
p Time.utc(*values)
















