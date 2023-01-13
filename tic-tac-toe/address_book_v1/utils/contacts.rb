require_relative '.././database/contact'

module Contacts
  
  def self.set_connection(conn_obj)
    contact = Contact.new(conn_obj)
  end

  def self.main_menu(user)
    username = user[0]["username"]
    seperator = "-" * 50
    puts seperator
    puts "Hey #{username}, Welcome to Your Profile."
    puts seperator
    puts "Please choose options from below :"
    puts seperator
    while true
      puts "press 1 to view all contact addresses :"
      puts "press 2 to add new contact address :"
      puts "press 3 to update contact address :"
      puts "press 4 to delete a contact address :"
      puts "press 5 to delete your account :"
      puts "press q to quit the progarm : "
      choice = gets.chomp
      case choice
      when '1'
      when '2'
      when '3'
      when '4'
      when '5'
      when 'q','Q'
        exit(0)
      else
        puts "It's an invalid choice"
      end
    end
  end

end