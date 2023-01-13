numbers = [1,2,3,4,5]

sqr = numbers.map { |number| number * number }
sum = 0
add = [1,2,3,4,5].reduce { |res, curr| res += curr}
add_v1 = [1,2,3,4].reduce(:+)
puts add
puts add_v1

# puts "sqr: #{sqr.inspect}"
# p sqr

friends = ["ashish", "ram", "hari", "mike", "sita", "gita"]

list_f = friends.map { |friend| friend.capitalize }
p list_f

list_n = friends.select{ |friend| friend.length == 4 }
p list_n
puts list_n.class