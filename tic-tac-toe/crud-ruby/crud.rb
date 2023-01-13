require_relative 'connection.rb'

HOSTNAME = "127.0.0.1"
USERNAME = "root"
PASSWORD = ""
DATABASE = "ruby_db"

database = Connection::Service.new(HOSTNAME, USERNAME, PASSWORD, DATABASE)
connObj = database.get_connection


# rows = connObj.query("SELECT * FROM users")
# user_rows = connObj.query("SELECT username FROM users")
# # puts user_rows.to_a

# user = "testUser"
# find_user = connObj.query("SELECT * FROM users WHERE username LIKE \"#{user}\" ")
# find_user_by_id = connObj.query("SELECT * FROM users WHERE users.id = 1")

# get_all_users = database.get_all_users
# puts get_all_users.to_a


# puts "Class method"
# find_user = database.find_user_by_id(2)
# puts find_user.to_a

# puts "-" * 30


# puts "Find by ID"
# puts "-"*40
# puts find_user_by_id.to_a
# puts "-"*40
# puts "End"
# if find_user.to_a
#   new_user = "admin"
#   update_user = connObj.query("UPDATE users SET username = \"#{new_user}\" WHERE users.id = 2")
# else
#   puts "Insert will begin."
# end

# username = 'testUser'
# for row in rows
#   puts row
#   if row["username"].eql?(username)
#     puts "Record already exists."
#   else
#     puts "Insert will begin here.."
#   end
# end


# # rows.each do |row|
# #   puts row["username"].eql?(username)
# #   # return
# #   if row['username'].downcase === "testuser"
# #     puts "Record already exists."
# #   else
# #     puts "Insert will begin.."
# #     # connObj.query("insert into users (username, email, password) VALUES
# #     #   ('testUser', 'test@admin.com', 'password')")
# #   end
# # end


# if connObj
#   results = connObj.query("SELECT * FROM users")
#   results.each do |row|
#     puts row["id"] 
#     puts row["username"]
#     puts row["email"]
#   end
# else
#   puts "Connection Failed.."
# end


# def check_connection(database)
#   raise Connection::DatabaseError, "Connection is closed." if !database.close_connection
# end

# begin
#   check_connection(database)
#   puts "-" * 40
#   results = connObj.query("SELECT * FROM users")
#   puts results
# rescue Connection::DatabaseError => e
#   puts e.message
# end


# # begin
# #   database.close_connection
# #   results = connObj.query("SELECT * FROM users")
# # rescue => exception
# #   puts exception.message
# # end
