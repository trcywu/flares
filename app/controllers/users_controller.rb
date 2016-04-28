class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @flares = Flare.all
    @hash = Gmaps4rails.build_markers(@flares) do |flare, marker|
      marker.lat flare.latitude
      marker.lng flare.longitude
    end

  end

  def show
    @user = User.find(params[:id])

  end
end


