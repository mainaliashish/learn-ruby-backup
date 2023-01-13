require_relative "./utils/service"

# Connection parameters Constants
HOSTNAME = "127.0.0.1"
USERNAME = "root"
PASSWORD = ""
DATABASE = "ruby_address_book"

# Getting connection status
connection = Service::Connection.new(HOSTNAME, USERNAME, PASSWORD, DATABASE)

puts connection.welcome_screen
# test = Service::Connection.welcome_screen