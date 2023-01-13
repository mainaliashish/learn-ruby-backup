#!/usr/bin/env ruby
puts "Enter your first name : "
f_name = gets.chomp
puts "Enter your last name : "
l_name = gets.chomp

full_name = "#{f_name} #{l_name}"
reverse_name = full_name.reverse
name_count = full_name.delete(' ').length

puts "Your full name is #{full_name}."
puts "Your full name is reverse order #{reverse_name}."
puts "Your have #{name_count} characters in your name."
