# State and behavior of class and Objects

class Human
	attr_accessor :name, :height, :weight 
	# attr_reader :name
	def initialize(name, height, weight)
		@name = name
		@height = height
		@weight = weight
	end

	# Getter and Setter
	# def name
	# 	@name
	# end

	# def name=(name)
	# 	@name = name
	# end

	# def show_name
	# 	puts "#{@name}"
	# end

	def talk
		puts "Hello #{name}"
	end

	def change_info(n,h,w)
		self.name = n
		self.height = h
		self.weight = w
	end

	def display
		puts "Name is #{name}. His weight is #{weight} and height is #{height}."
	end

end


human = Human.new("John", "5 feet", "50 kg")
# puts "Old name"
# puts human.name
human.display

human.change_info("Bob", "5 feet", "56 kg")
human.display
# puts "New name"
# human.name = "Hari"
# puts human.name


