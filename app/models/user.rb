class User < ActiveRecord::Base
  has_secure_password
  # validates :password, presence: true

  # def password=(new_password)
  #   # if new_password.nil? || new_password.empty?
  #   #   nil
  #   # else
  #     salt = BCrypt::Engine::generate_salt
  #     hashed = BCrypt::Engine::hash_secret(new_password, salt)
  #     self.password_digest = salt + hashed
  #   # end
  # end
  #
  # def authenticate(password)
  #   salt = password_digest[0..28]
  #   hashed = BCrypt::Engine::hash_secret(password, salt)
  #   if (salt + hashed) == self.password_digest
  #     self
  #   else
  #     nil
  #   end
  # end


end
