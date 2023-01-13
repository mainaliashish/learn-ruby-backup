require_relative 'connection.rb'

# Connection parameters Constants
HOSTNAME = "127.0.0.1"
USERNAME = "root"
PASSWORD = ""
DATABASE = "quotes_ruby"

# Getting connection status
connection = Connection::Service.new(HOSTNAME, USERNAME, PASSWORD, DATABASE)

# rows = connection.get_all_records
# puts rows.to_a


