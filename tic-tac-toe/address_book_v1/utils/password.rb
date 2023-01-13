module Password
  require 'bcrypt'
  
  # Create a Password Hash using BCrypt
  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  # Return the Password Hash to verify
  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  # # Verify the username and check if the password matches the hash digest
  def self.authenticate_user(username, password, db_username, hash_password)
    # puts hash_password
    # puts username
    # puts db_username
    # puts password
    if db_username == username && verify_hash_digest(hash_password) == password
      return true
    end
  end

end
