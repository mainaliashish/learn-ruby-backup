# Single line block

def x
    if block_given?
      yield(3,4)
    end 
    puts "World"
end

x(){ |a,b| puts a+b }


# Multi line block

def y
    yield 
    puts "Inside the function."
    yield 
    puts "Inside the function."
end

y()do
    puts "Inside the block"
    puts "Still Inside the block"
end