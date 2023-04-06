# Hashin Password

Please uncomment line 6 to line 13 to see the hashing of password in /models/user.rb <br />
  #Using hash method for securing purpose <br />
  def password <br />
   @password ||= Password.new(password_hash) <br />
  end <br />

  def password=(new_password) <br />
    @password = Password.create(new_password) <br />
    self.password_hash = @password <br />
  end
