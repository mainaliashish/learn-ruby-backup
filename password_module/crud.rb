module Crud
  require 'bcrypt'
  
  # Check if the module is loaded
  puts "Module Crud activated"

  # Create a Password Hash using BCrypt
  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  # Return the Password Hash to verify
  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  # Converts each users password in an array to a hash password
  def self.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  # Verify the username and check if the password matches the hash digest
  def self.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username &&
        verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "Credentials were not correct"
  end
end
