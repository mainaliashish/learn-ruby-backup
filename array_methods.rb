x = ["Yes", "No", "Okay", "Later"]

# sample takes a random values from an array
puts x.sample
puts x.sample(2)
puts x.include? "Yes"

y = ["a", "b", "c", "d", "e"]
res = y.select { |y| y.include?("a") }
puts res

y = ["a", "b", "c", "d", "e"]
res = y.reject { |y| y.include?("a") }
p res

