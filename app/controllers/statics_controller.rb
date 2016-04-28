
class StaticsController < ApplicationController
  
  def home
    @homepage = true

  end

  def maps
    @users = User.all
    @flares = Flare.all
    @flare = Flare.new

    @hash = Gmaps4rails.build_markers(@flares) do |flare, marker|
      box_text = "<a href='flares/#{flare.id}'>#{flare.title}</a>"
      marker.infowindow "#{flare.title} <br> #{flare.start_time}"
      marker.infowindow box_text
      marker.lat flare.latitude
      marker.lng flare.longitude

    end
  end
end
