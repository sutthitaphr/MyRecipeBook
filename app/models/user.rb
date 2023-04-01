class User < ApplicationRecord
  #This is a password-hashing function
  include BCrypt

  #Using hash method for securing purpose
  #def password
  #  @password ||= Password.new(password_hash)
  #end

 # def password=(new_password)
 #   @password = Password.create(new_password)
 #   self.password_hash = @password
 # end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
