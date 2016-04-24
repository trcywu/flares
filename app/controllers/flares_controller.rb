class FlaresController < ApplicationController
  def index
    @users = User.all
    @flares = Flare.all
  end

  def new
    @flare = Flare.new
  end

  def show
  end

  def create
    @flare = current_user.flares.new(flare_params)
       if @flare.save
           flash[:success] = "Your flare has been listed!"
           redirect_to flares_path
       else
           render "new"
       end

  end

  def edit
  end

  def update
  end

  def destroy
    @flare = Flare.find(params[:id])
    if @flare.destroy
      redirect_to flares_path
    else
      redirect_to :back
    end
  end
end
