#!/usr/env/bin ruby

users = [
    { username: "ashish", password: "password1" },
    { username: "ram", password: "password2" },
    { username: "ashok", password: "password3" },
    { username: "bibek", password: "password4" },
    { username: "sita", password: "password5" },
]

puts "-" * 35
puts "Welcome To Authenticator App."
puts "-" * 35

puts
puts "The program will take input as username and password from the user"

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end 
    end
    return "Credentials are incorrect."
end


attempts = 1

while attempts < 5
    puts "Enter Your Username :"
    username = gets.chomp.downcase
    puts "Enter Your Password :"
    password = gets.chomp

    if username.empty? && password.empty?
        puts "Username or Password can not be blank.."
    else
        authentication = auth_user(username, password, users)
        puts authentication
    end

    puts "Press q to quit the program or any other key to continue :"
    input = gets.chomp.downcase
    break if input == "q"

    attempts += 1
end






