#!/usr/bin/env ruby

puts "What is your first name? "
first_name = gets.chomp

# gets.chomp -> This accepts the data in the form of string

sentence = "Thank you, Your first name is #{first_name}"

puts sentence

puts "Enter a first number :"
f_num = gets.chomp.to_i
puts "Enter a second number :"
s_num = gets.chomp.to_i

puts "The result of adding #{f_num} and #{s_num} is #{f_num + s_num}"