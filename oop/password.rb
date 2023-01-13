require 'bcrypt'

my_password = BCrypt::Password.create("my password")
puts my_password

puts my_password.version              #=> "2a"
puts my_password.cost                 #=> 12
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false

my_password = BCrypt::Password.new("$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey")
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false