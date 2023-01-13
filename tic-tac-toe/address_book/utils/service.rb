module Service
  require "mysql2"
  require_relative './user'
  require_relative './address'
  require_relative './password'

  class Connection

    def initialize(dbhost, dbuser, dbpassword, dbname)
      @HOSTNAME = dbhost
      @USERNAME = dbuser
      @PASSWORD = dbpassword
      @DATABASE = dbname
      @user = User.new
      begin
        @client = Mysql2::Client.new(
            :host => @HOSTNAME, 
            :username => @USERNAME, 
            :password => @PASSWORD,
            :database => @DATABASE,
          )
      rescue => exception
        puts exception.message
      end
    end

    def welcome_screen
      @user.user_screen
      username = @user.username.downcase
      password = @user.password
      case @user.status
      when 'Login'
        # puts @user.status ? @user.status : ''
        login = self.login_user(username, password)
      when 'Register'
        # puts @user.status ? @user.status : ''
        first_name = @user.first_name
        last_name = @user.last_name
        username = @user.username
        password = @user.password
        confirm_password = @user.confirm_password
        secret_phrase = @user.secret_phrase
        register = self.register_user(first_name, last_name, username, password, confirm_password, secret_phrase)
      else
      end
    end

    def login_user(username, password)
      unless username.empty? || password.empty?
        @user = @client.query("SELECT * FROM users WHERE 
          username = '#{username}'")
        @user = @user.to_a  
        hash = @user[0]["password"]
        if @user[0]["username"] == username &&
          Password.verify_hash_digest(hash) == password
          puts "Login Success"
        else
          "Username or Password do not match."
        end
      else
        puts "No"
      end
    end

    def get_all_users_by_username
      @usernames = @client.query("SELECT username FROM users")
    end

    def register_user(first_name, last_name, username, password, confirm_password, secret_phrase)
      unless first_name.empty? || last_name.empty? || password.empty? || confirm_password.empty? || username.empty?
        @usernames = self.get_all_users_by_username.to_a
        @usernames = @usernames.map { |row| row["username"]}
        # puts @usernames
        result =  @usernames.include?(username)
        if result
          puts "Username is already taken."
        else
          if password == confirm_password
            password = Password.create_hash_digest(password)
            @user = @client.query("INSERT INTO users
                                  (first_name, last_name, username, password, secret_phrase) VALUES 
                                  ('#{first_name}', '#{last_name}', '#{username}', '#{password}', '#{secret_phrase}')
                                  ")
            puts "Yay, User was created successfully. 🌋 "
          else
            puts "Password and Confirm password do not match."
          end
        end
      else
        puts "Field can not be empty."
      end
    end

  end
  
end