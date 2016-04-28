class StaticsController < ApplicationController
  
  def home
    @homepage = true

  end

  def map
    @users = User.all
    @flares = Flare.all

    @hash = Gmaps4rails.build_markers(@flares) do |flare, marker|
      marker.lat flare.latitude
      marker.lng flare.longitude

  end
end
