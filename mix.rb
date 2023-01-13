# 0.upto(9) do |x|
#   p x
# end

# 0.step(12, 3) {|x| print x, " " }


# numbers = [1, 2, 3, 4, 5, 6, 7]
# # numbers.map {puts "Hello"}

# board = ["X", "X", "X", "O"]

# num_array = [[1,2,3], [4,5,6], [7,8,9], [10,11,12]]
# for nums in num_array
#   puts nums.class
#   for num in nums
    
#   end
#   return
# end

# $m = 1
# def hello
#   puts m
# end

info = []
# add an element at the end of an array
puts info << ["ashish", "jhapa"]

# puts hello

$v = 0

def x
  $v = 1
end

puts x
puts $v


def met()   
  puts "This is method"   
  yield   
end   
met { puts "This is block example" }   



def test_func(x, y, &example_block)   
  puts "This is method #{x+y}"   
  example_block.call
end   

test_func(x=1, y=4) { puts "This is block example" }  
