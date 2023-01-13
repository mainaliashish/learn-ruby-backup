module Flyable
	def walk
		puts "I will walk Flyable."
	end
end


module Walkable
  def walk
		# super
		puts "I will walk."
	end
end

module Swimmable
	def swim
		puts "I am swimming."
	end

	def walk
		# super()
		puts "I am walking swim method."
	end
end

module Climbable
	def climb
		puts "I am climbing."
	end
end

class Human
	include Walkable
	def talk
		puts "I am a human and I can talk."
	end
end

class Male < Human
	include Swimmable
	include Climbable
end

puts "Human method lookup."
puts Male.ancestors
human = Male.new
human.talk
human.walk
human.swim

