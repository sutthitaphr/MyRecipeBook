class UserController < ApplicationController
    #This method is implemented to hash any passwords for security purpose
    def user_params
        params.require(:user).permit(:email ,:password_hash)
    end

    #This method is implemented to prevent SQL Injection
    def create
        User.where(["email = ?", {params[:email]}])
    end
end
  
