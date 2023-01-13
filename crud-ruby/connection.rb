module Connection
  require "mysql2"
  
  class Service

    def initialize(dbhost, dbuser, dbpassword, dbname)
      @HOSTNAME = dbhost
      @USERNAME = dbuser
      @PASSWORD = dbpassword
      @DATABASE = dbname
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

    def get_connection
      @client
    end

    def close_connection
      @client.close
    end

    def create_user(uname, email, password)
      # puts uname, email, password
      @user = @client.query("INSERT INTO users
                             (username, email, password) VALUES 
                             ('#{uname}', '#{email}', '#{password}')")
    end

    def update_user(id, uname = "", email = "", password = "")
      @user = self.find_user_by_id(id)
      # if @user.empty?
      #   puts "Opsss"
      # end
      unless @user.empty?
        @user_id = @user[0]["id"]
        username = uname ? uname : @user[0]["username"]
        email = email.empty? ? @user[0]["email"] : email
        puts email
        password = password.empty? ? @user[0]["password"] : password 
        puts password
        @user = @client.query("UPDATE users
                                      SET username = '#{username}', 
                                        email = '#{email}',
                                        password = '#{password}'
                                      WHERE users.id = #{@user_id}")

      else
        puts "No user found in the record."
      end
    end

    def get_all_users
      @users = @client.query("SELECT * FROM users")
    end

    def find_user_by_id(id)
      @user = @client.query("SELECT * FROM users WHERE users.id = #{id}").to_a
    end

    def delete_user(id)
      @user = self.find_user_by_id(id)
      if !@user.empty?
        @user = @client.query("DELETE FROM users WHERE users.id = #{@user[0]["id"]}")
        "User has been deleted successfully."
      end
    end

    # def self.say_hello
    #   puts "Hello World"
    # end

  end
  
  class DatabaseError < StandardError; end

end






