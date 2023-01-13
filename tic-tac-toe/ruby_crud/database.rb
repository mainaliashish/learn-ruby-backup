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

    def get_all_records
      @quotes = @client.query("SELECT * FROM quotes")
    end

    def get_all_quote_id
      @quote_ids = @client.query("SELECT quote_id FROM quotes")
    end

    # def get_quote_by_id(id)
    #   @quote = @client.query("SELECT * FROM quotes WHERE quote_id = #{id}")
    # end

    def create_record(username, email, quote, quote_id)
      @ids = self.get_all_quote_id.to_a
      # puts @ids
      @ids = @ids.map { |row| row["quote_id"]}
      # puts @ids
      result =  @ids.include?(quote_id.to_i)
      # puts result
      if result
        @ids_taken = @ids
        puts "Taken IDs: #{@ids_taken}"
        puts "Please choose unique Quote ID."
        puts "Quote ID is already Taken"
      else
        @quote = @client.query("INSERT INTO quotes
                               (username, email, content, quote_id) VALUES 
                               ('#{username}', '#{email}', '#{quote}', '#{quote_id}')")
        puts "Yay, Quote created successfully. 🌋 "
      end
    end

    def get_record_by_username(username)
      @quotes = @client.query("SELECT * FROM quotes WHERE username = '#{username}'")
      if @quotes
        @quotes
      else
        "No username found."
      end
    end

    def get_record_by_qid(id)
      @quote = @client.query("SELECT * FROM quotes WHERE quote_id = #{id}")
    end

    def update_record(username, email, quote, quote_id)
      @quote = self.get_record_by_qid(quote_id.to_i)
      @quote = @quote.to_a
      # puts @quote
      # puts @quote[0]["quote_id"]
      if @quote.to_a.count >= 1
        username = username ? username : @quote[0]["username"]
        # puts username
        email = email.empty? ? @quote[0]["email"] : email
        # puts email
        quote = quote.empty? ? @quote[0]["quote"] : quote
        # puts quote
        quote_id = @quote[0]["quote_id"]
        # puts quote_id
        time = Time.new
        updated_at = time.strftime('%Y-%m-%d %H:%M:%S')

        @quote = @client.query("UPDATE quotes
                                      SET username = '#{username}', 
                                        email = '#{email}',
                                        content = '#{quote}',
                                        quote_id = #{quote_id},
                                        updated_at = '#{updated_at}'
                                      WHERE quotes.quote_id = #{quote_id}")
        puts "Quote has been updated successfully.. 😄"
      else
        puts "somthing went wrong.."
      end
    end

    def delete_record(id)
      @quote = self.get_record_by_qid(id)
      @quote = @quote.to_a
      quote_id = @quote[0]["quote_id"]
      if @quote.to_a.count >= 1
        @quote = @client.query("DELETE FROM quotes WHERE quotes.quote_id = #{quote_id}")
        "Quote has been deleted successfully."
      else
        "Something went wrong"
      end
    end

    def close_connection
      @client.close
    end

  end
end