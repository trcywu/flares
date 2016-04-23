# class AuthenticationsController < ApplicationController
#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(user_params)
#     if @user.save
#       flash[:success] = "Thanks for registering, please login"
#       redirect_to index_path
#     else
#       render "new"
#   end

#  def user_params
#      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :username, :image, :location,:description)
#  end

# end
