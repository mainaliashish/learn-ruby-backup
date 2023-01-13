puts "Break keyword in ruby."

# while true
#   # ran = rand(20)
#   nums = 0..20
#   nums = nums.to_a
#   ran = nums.sample
#   puts ran
#   break if ran == 10
# end

puts "Next keyword in ruby."

num = 0
while num < 40
  num += 1
  if (num % 2 == 0)
    next
  end
  puts num
end