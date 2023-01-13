class User
  attr_reader :username, :password, 
              :confirm_password, :first_name, 
              :last_name, :secret_phrase, :status

  def user_screen
    formatter = "-" * 45
    puts formatter
    puts "\tWelcome To The Address Book App"
    puts formatter
    puts "please press 1 to Login : "
    puts "please press 2 to Sign up : "
    input = gets.chomp
    case input
    when '1'
      self.login_box
    when '2'
      self.register_box
    else
      puts "Invalid input given"
    end
  end

  def login_box
    puts "Enter your username :"
    @username = gets.chomp
    puts "Enter password :"
    @password = gets.chomp
    @status = 'Login'
  end

  def register_box
    puts "Enter your first name :"
    @first_name = gets.chomp
    puts "Enter your last name :"
    @last_name = gets.chomp
    puts "Enter your username :"
    @username = gets.chomp.downcase
    puts "Enter your password :"
    @password = gets.chomp
    puts "Confirm your password :"
    @confirm_password = gets.chomp
    @status = 'Register'
  end


end