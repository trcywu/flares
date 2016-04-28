class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @flares = Flare.all

    end



  def show
    @user = User.find(params[:id])

  end
end


