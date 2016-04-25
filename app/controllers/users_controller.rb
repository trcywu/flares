class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @q = Flare.search(params[:q])
    @flares = @q.result(distinct: true)
  end

  def show
    @user = User.find(params[:id])
    @q = Flare.search(params[:q])
    @flares = @q.result(distinct: true)
  end
end


