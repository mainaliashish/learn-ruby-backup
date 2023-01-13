require 'rspec'

class HelloWorld
  def initialize(number_one: 0, number_two: 0)
    @number_one = number_one
    @number_two = number_two
  end

  def say_hello 
    "Hello World!"
  end

  def add_num(number_one, number_two)
    return number_one + number_two
  end
   
end


RSpec.describe HelloWorld do
  context "when testing the HelloWorld class" do 
    it "should return 'Hello World!' when we invoke the say_hello method" do
      h_world = HelloWorld.new()
      message = h_world.say_hello
      expect(message).to eq "Hello World!"
    end
  end

  context "when testing the add_num method" do
    it "should return the sum of two numbers when we call the add_num method" do
      sum = HelloWorld.new
      inputs = sum.add_num(4,5)
      expect(inputs).to eq 9
    end
  end
end


