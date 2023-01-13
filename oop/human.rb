#!/usr/bin/env ruby

class Human
  # Method for initialisation inside the class
  def initialize(name, age, sex)
    # Initialising the variables
    @name = name
    @age = age
    @sex = sex
  end
  
  def display_data(job)
    puts "The name of the user is #{@name.capitalize} and  age is #{@age} also he is a #{@sex}"
    puts "#{@name.capitalize} works as a #{job}"
  end
end
# Creating an objects and passing parameters  for initialization
object1 = Human.new("ranjan", 31, "male")
object2 = Human.new("anjali", 28, "female")
object1.display_data("Engineer")
object2.display_data("Doctor")

