module Human
	class Male
		def print_gender
			puts "I am a male"
		end
	end

	class Female
		def say_name(name)
			puts "My name is #{name}"
		end
	end
end

x = Human::Male.new
y = Human::Female.new
x.print_gender
y.say_name("Sita")