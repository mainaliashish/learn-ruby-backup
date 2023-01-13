#! /usr/bin/env ruby

class Calculator

  def initialize(number_one, number_two)
    @number_one = number_one
    @number_two = number_two
  end

  def add
    @number_one + @number_two
  end

  def subtract
    @number_one - @number_two
  end

  def multiply
    @number_two * @number_one
  end

  def display_result
    puts "#{@number_one} + #{@number_two} = #{self.add}"
    puts "#{@number_one} - #{@number_two} = #{self.subtract}"
    puts "#{@number_one} * #{@number_two} = #{self.multiply}"
  end

  def sqr(number)
    number ** 2
  end

end

calculator = Calculator.new(20, 10)
calculator.display_result
puts "Square of 5 : #{calculator.sqr(5)}"