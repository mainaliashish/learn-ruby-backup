require_relative '.././database/user'
require_relative './contacts'


module Users

  def self.set_connection(conn_obj)
    $user = User.new(conn_obj)
  end

  def self.welcome_screen
    formatter = "-" * 45
    while true      
      puts formatter
      puts "\tWelcome To The Address Book App"
      puts formatter
      puts "please press 1 to Login : "
      puts "please press 2 to Sign up : "
      puts "please press q to Quit program : "
      input = gets.chomp
      case input
      when '1'
        self.login_box
      when '2'
        self.register_box
      when 'q','Q'
        exit(0)
      else
        puts "Invalid input given"
      end
    end
  end

  def self.login_box
    puts "Enter your username :"
    username = gets.chomp
    puts "Enter password :"
    password = gets.chomp
    user = $user.check_login(username, password)
    if user
      Contacts.main_menu(user)
    end
  end

  def self.register_box
    puts "Enter your first name :"
    first_name = gets.chomp
    puts "Enter your last name :"
    last_name = gets.chomp
    puts "Enter your username :"
    username = gets.chomp.downcase
    puts "Enter your password :"
    password = gets.chomp
    puts "Confirm your password :"
    confirm_password = gets.chomp
    puts "Enter a secret phrase :"
    secret_phrase = gets.chomp
    $user.handle_register(first_name, last_name, username, password, confirm_password, secret_phrase)
  end

end