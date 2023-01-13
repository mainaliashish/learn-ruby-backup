#!/usr/env/bin ruby

# Hash aka dictionary

# 2 ways to represent hashes in Ruby

# 1. keys as a String

my_details = {
    'name' => 'Ashish Mainali',
    'address' => 'Kathmandu, Nepal',
    'email' => 'ashish@admin.com',
    'sex' => 'Male',
    'birth_place' => 'Jhapa'
}

# puts my_details['name']
# puts my_details['address']
# Looping through a Hash
# puts my_details

my_details.each do |key, value|
    puts "#{key} : #{value}"
end


# 2. keys as a Symbol

my_details_one = {
    :name => 'Ashish Mainali',
    :address => 'Kathmandu, Nepal',
    :email => 'ashish@admin.com',
    :sex => 'Male',
    :birth_place => 'Jhapa'
}

puts my_details_one[:name]


a = {a: 100, "b"=> 200}
b = {a: 100, b: "200", c:nil}
c = {a: "100", b: nil, c:300}

puts "Identity check for a : #{a.compare_by_identity()}"
puts "Identity check for b : #{b.compare_by_identity()}"
puts "Identity check for c : #{c.compare_by_identity()}"

puts "Values in a : #{a.values()}"
puts "Values in b : #{b.member?(:c)}"
puts "Values in a : #{a.member?("b")}"

puts "Length of a : #{a.length}"

a = {a: 100, b: 200, c: 300, d: 400, e: 500}
b = {a: 100, b: 200, c: 300, d: 400, e: 500}


puts a.select {|key,value| value > 100}
puts a.reject {|key,value| value > 200}
# puts a
# puts b


c = {a: 100, b: 200, c:300, d:nil}
puts "Delete a : #{c.delete(:a)}"
puts "Delete b : #{c.delete(:b)}"
puts "Delete d : #{c.delete(:d)}"
puts c


d = {a: 100, b: 200}
e = {c: 300, d: 400, e: 500}

puts "Merged array is #{d.merge(e)}"

























