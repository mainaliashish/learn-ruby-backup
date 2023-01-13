require_relative "./connection"
require_relative '.././utils/password'

class User

  def initialize(conn_obj)
    @connection = conn_obj
  end

  def check_login(username, password)
    unless username.empty? || password.empty?
      user = @connection.query("SELECT * FROM users WHERE username = '#{username}'")
      user = user.to_a  
      if user.count == 1 
        db_username = user[0]["username"]
        hash_password = user[0]["password"]
        check = Password.authenticate_user(username, password, db_username, hash_password)
        if check
          return user
        else
          puts "Credentials were not correct"
        end
      else
        puts "Username does not exist.."
      end
    else
      puts "Username or Password can not be empty."
    end
  end


  def handle_register(first_name, last_name, username, password, confirm_password, secret_phrase)
    unless first_name.empty? || last_name.empty? || password.empty? || confirm_password.empty? || username.empty?
      usernames = self.get_all_users_by_username
      usernames = usernames.map { |row| row["username"]}
      result =  usernames.include?(username)
      if result
        puts "Username is already taken."
      else
        if password == confirm_password
          password = Password.create_hash_digest(password)
          user = @connection.query("INSERT INTO users
                                (first_name, last_name, username, password, secret_phrase) VALUES 
                                ('#{first_name}', '#{last_name}', '#{username}', '#{password}', '#{secret_phrase}')
                                ")
          puts "Yay, User was created successfully.🚀"
          puts "Please proceed to Login menu..😋"
        else
          puts "Password and Confirm password do not match."
        end
      end
    else
      puts "Please fill up all the fields. "
    end
  end


  private

  def get_all_users_by_username
    @connection.query("SELECT username FROM users")
  end



end