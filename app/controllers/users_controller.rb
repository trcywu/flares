class UsersController < ApplicationController
  before_action :authenticate_user!

  # user_signed_in?

  # current_user

  # user_session
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end
end
