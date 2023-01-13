
class Connection
  require 'mysql2'

  def initialize(dbhost, dbuser, dbpassword, dbname)
    begin
      @client = self.get_db_connection(dbhost, dbuser, dbpassword, dbname)
      # puts @client
    rescue => exception
      puts exception.message
    end
  end

  def get_client
    @client
  end

  private
  def get_db_connection(dbhost, dbuser, dbpassword, dbname)
    Mysql2::Client.new(:host => dbhost, :username => dbuser, 
                                :password => dbpassword, :database => dbname)
  end

end