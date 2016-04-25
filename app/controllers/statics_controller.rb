class StaticsController < ApplicationController
  
  def home
    @q = Flare.search(params[:q])
    @flares = @q.result(distinct: true)
  end
end
