#!/usr/bin/env ruby

# puts "Hello World!" # includes a new line character and has return value.

# p "Hello World!"

# print "Hello World!" # does not include a new line character

# puts "Hello again!"

# def say_hello
#     "Hello World Function!"
# end

# puts say_hello


# def create_phone_number(numbers)
#     "(#{numbers[0..2].join("")}) #{numbers[3..5].join("")}-#{numbers[6..9].join("")}"
# end

# output = create_phone_number([1,2,3,4,5,6,7,8,9,0])
# puts output
# def spin_words(string)
#     a_string = string.split(" ")
#     for word in a_string
#         # puts word.length
#         if word.length >= 5
#             word.reverse!
#         end
#     end
#     f_string = a_string.join(" ")
#     return f_string
# end

# def spin_words_v1(string)
#     string.split(" ").map{|word| word.length >= 5 ? word.reverse : word}.join(" ")
# end
# # puts spin_words("Welcome")
# puts spin_words("This is a test")
# puts spin_words_v1("Welcome to Jungle")



# def friend(friends)
#     filter_friends = []
#     for friend in friends do
#         if friend.length == 4 
#             filter_friends.push(friend)
#         end
#     end
#     filter_friends
#     # friend_list = friends.split(" ")
# end

# def friend_v1(friends)
#   friends.select { |name| name.length == 4 }
# end

# def friend_v2(friends)
#     friends.map{|friend| friend.length ==4 ? friend : "" }
# end

# def friend_v3(friends)
#   friends = friends.select {|friend| friend.length == 4}
#   friends.nil? ? [] : friends
# end

# puts friend_v3(["Ryan", "Kieran", "Mark", "124"])



# def get_count(input_str)
#   vowel = "aeiou"
#   input_str.count(vowel)
# end

# def getCount(inputStr)
#   vowels = "aeiou"
#   count = 0
#   inputStr.chars.each do |letter|
#     # puts letter
#     if vowels.chars.include? letter
#       count += 1
#     end
#   end
#   count
# end


# puts get_count("Hello how are you")
# puts getCount("Hello how are you")


# def accum(s)
#     i = 0
#     arr = []
# 	for char in s.chars
#         arr.push(char.upcase + char.downcase * i)
#         i += 1
#     end
#     arr.join("-")
# end

# def accum_v1(s)
#   s.chars.each_with_index.map{ |char, index| char.upcase + char.downcase * index }.join('-')
# end

# puts accum("ZpglnRcxqenU")
# puts accum_v1("ZpglnRcxqenU")


# puts "hello, world!", "how's it going?"


# x = "abc"
# y = ""

# c = !!x&y
# puts c


# res = "hoNeY BaDGer".downcase.include?("baDger".downcase)
# puts res
# str = "A man,a plan,a canal,Panama"
# res = str.split(",")
# puts res
