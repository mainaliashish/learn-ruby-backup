module A
  def outer
    puts "Outer module function"
  end
  module B
    def inner
      puts "Inner module funtion"
    end
  end 
end

module A::B::GrandChild
end

class X
  include A
  include B
end

test = X.new
test.inner
test.outer