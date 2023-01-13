# Syntax /Expression/

if "hello world".match(/hello/)
    puts "Match found!"
else
    puts "No match found!"
end

def vowels(str)
    str =~ /[aeiou]/
end

puts(vowels("elephant"))

a = "1q2"
b = "3.1"

if(a.match(/\d.\d/))
    puts "Match found"
else
    puts "No match found"
end

# i for escaping capital letters
x = "abc".match(/[A-Z]/i)
puts x

def ip_address?(str)
    !! (str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end

puts ip_address?("192.168.1.1")
puts ip_address?("0000.0000")

res = "Regex expeession".match(/^\w{4}$/)
puts res

res_1 = "0".match(/^\d{1}$/)
res_2 = "1".match(/^[1-9]$/)
puts res_1
puts res_2


def x?(str)
  !! (str =~ /(?<=\w) (\d+)/)
end

puts x?("Ashish 26")

# puts /a/.class
# # regular expression class 
# regexp = Regex.new("a")

# LOG_FORMAT = { 
#   (/\d{2}:\d{2}/) #time
#   \s(\w+) #type
#   \s(.*) #message
# }

x = "this is a string".scan(/\w+/)
puts x

x = "this is a string 12345".scan(/\d+/)
puts x

x = "this is a string".gsub(/\w+/) { |l| l.capitalize }
puts x


email = "email@example.com"

x = !! email.match(/\A[\w.+-]+@\w+\.\w+\z/)
puts x

x = "hello, world".match(/,/,3)
puts x




















