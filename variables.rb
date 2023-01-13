#!/usr/bin/env ruby


# Constant: Starts with a capital letter.
# Global variable: Starts with a dollar sign ($).
# Instance variable: Starts with a (@) sign.
# Class variable: Starts with a (@@) sign.
# Method name: Allowed to start with a capital letter.

greeting = "Namaskar!" #variable
Greeting = "Namaskar" #Constant

# Greeting = "Hello" # can not initialize a constant again

puts Greeting


fisrt_name = "Ashish"
last_name = "Mainali"

full_name = "#{fisrt_name} #{last_name}"
full_name_one = fisrt_name + " " + last_name	

puts full_name.length
puts full_name.upcase
puts full_name.downcase
puts full_name_one

# sub() only replaces a single word or words
sentence = "Welome to the Jungle."
new_sentence = sentence.sub("Jungle.", "Moon!")

# gsub() replaces the whole occurances of the word or words
sentence_one = "Hello, Hello How are you doing? Hello I am doing well, Hello."
new_sentence_one = sentence_one.gsub("Hello", "Namaskar")

puts new_sentence
puts new_sentence_one

puts new_sentence[0..10]

f_name = "Ashish"
new_first_name = f_name
f_name = "John"

str = 'Hello, \'how are you man\''
puts str




class Test
  @@speed = "10 KmPh" # class Variable can be accessed with in class
  $color = "Red" # global variable, can be accessed in a block
  wheel_count = 4 # local variable, can't be accessd in a block 
  def get_speed
    @gears = 5 # instance Variable
    puts "The speed is #{@@speed} and it has #{@gears} gears."
    puts "The color of the car is #{$color}"
  end

  # class method
  def self.get_color
    puts "Color is #{$color}"
  end
end

test_one = Test.new
puts test_one.get_speed

Test.get_color











