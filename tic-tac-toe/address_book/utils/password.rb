module Password
  require 'bcrypt'
  
  # Check if the module is loaded
  # puts "Module Password activated"

  # Create a Password Hash using BCrypt
  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  # Return the Password Hash to verify
  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

end
