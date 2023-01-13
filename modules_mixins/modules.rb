module A
  def a
    puts "A module a"
  end
end

module B
  def b
    puts "B module b"
  end
end

class X

	include A
	include B

	def x
    puts "class X method"
	end
end

obj = X.new
obj.a
obj.b
obj.x