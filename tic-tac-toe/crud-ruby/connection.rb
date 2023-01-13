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

    def get_all_records
      @quotes = @client.query("SELECT * FROM quotes")
    end

    def create_record(username, email, quotes, created_at)
      @quote = @client.query("INSERT INTO quotes
                             (username, email, quotes, created_at) VALUES 
                             ('#{username}', '#{email}', '#{quotes}', '#{created_at}')")
    end

    def find_record_by_id(id)
      @user = @client.query("SELECT * FROM quotes WHERE quotes.id = #{id}")
    end


    def update_record(id, username = "", email = "", quote = "")
      @quote = self.find_record_by_id(id)
      unless @quote.empty?
        @quote_id = @quote[0]["id"]
        username = username ? username : @quote[0]["username"]
        email = email.empty? ? @quote[0]["email"] : email
        quote = quote.empty? ? @quote[0]["quote"] : quote
        updated_at = Time.now.strftime("%d-%m-%Y %H:%M:%S")

        @quote = @client.query("UPDATE quotes
                                      SET username = '#{username}', 
                                        email = '#{email}',
                                        quote = '#{quote}'
                                        updated_at = '#{updated_at}'
                                      WHERE quotes.id = #{@quote_id}")
      else
        puts "No Quote found in the record."
      end
    end

    def delete_record(id)
      @quote = self.find_record_by_id(id)
      if !@quote.empty?
        @quotw = @client.query("DELETE FROM quotes WHERE quote.id = #{@quote[0]["id"]}")
        "Quote has been deleted successfully."
      end
    end

  end
  

end






