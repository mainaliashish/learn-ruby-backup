#!/usr/bin/env ruby

# a = [1,2,3,4,5,6,7,8,9,10]

# puts a
# print a
# puts a.last
# puts a[a.length-1]

# Use .. to create a range in Ruby

# x = 1..10

# puts x.class

# x = x.to_a

# puts x.shuffle

# puts x

a = [1,2,3,4,5,6,7,8,9,10]

# Inserting items to array
a.push(11)
# a.pop()

# getting elements from an array
i_first = a.first
i_last = a.last

# p a
# puts 
puts i_first
puts i_last

# append at the first index of array
a.unshift("Ashish")
p a

# append at the last of array
a.append("Ashish")
p a

# shows a unique array
b = a.uniq
p b

puts a.include?("Ashish")

puts a.uniq.join()
puts c = a.join(",")
p c.split(",")

# sentence = "Hello how are you doing, I hope you are doing well."
# sentence_to_arr = %w(Hello how are you doing, I hope you are doing well.)

# for word in sentence_to_arr
#     puts word
# end


x = ["Head", "Tail"]

# sample generates random values
# sample(2) -> get two random entries
puts x.sample

puts x.include? "Head"

# map function ruby
n = [1,2,3,4]
sqr = n.map{|y| y*y}

puts sqr




















