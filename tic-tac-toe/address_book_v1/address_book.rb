require_relative "./database/connection"
# require_relative "./database/user"
require_relative "./utils/users"
require_relative "./utils/contacts"
# require_relative "./database/contact"

# Connection parameters Constants
HOSTNAME = "127.0.0.1"
USERNAME = "root"
PASSWORD = ""
DATABASE = "ruby_address_book"

# Getting connection status
connObj = Connection.new(HOSTNAME, USERNAME, PASSWORD, DATABASE)
# connObj = connection.connect
client = connObj.get_client
Users::set_connection(client)
Contacts::set_connection(client)

# while status
Users::welcome_screen
# end


