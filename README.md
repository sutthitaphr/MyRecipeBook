# Hashin Password

Please uncomment line 6 to line 13 to see the hashing of password.

/models/user.rb
*  #Using hash method for securing purpose
*  def password
*   @password ||= Password.new(password_hash)
*  end

*  def password=(new_password)
*    @password = Password.create(new_password)
*    self.password_hash = @password
*  end
