class FlaresController < ApplicationController
  before_action :set_flare, only:[:show, :edit, :update, :destroy]

  def index
    @flares = Flare.all
    # @comments = @flare.comments
  end

  def new
    @flare = Flare.new
  end

  def show
    @flare = Flare.find(params[:id])

    @new_comment = Comment.build_from(@flare, current_user.id, "")

    # @comments = @flare.comments

  end

  def create
    @flare = Flare.new(flare_params)
    # @flare = current_user.flares.new(flare_params)
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
        respond_to do |format|
          if @flare.update(flare_params)
            format.html { redirect_to @flare, notice: 'Flare was successfully updated.' }
            format.json { render :show, status: :ok, post: @flare }
          else
            format.html { render :edit }
            format.json { render json: @flare.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        @flare = Flare.find(params[:id])
        if @flare.destroy
          redirect_to flares_path
        else
          redirect_to :back
        end
      end


  def search
    @q = Flare.ransack(params[:q])
    @flares = @q.result(distinct: true)
    render :index
  end



  private
  def set_flare
    @flare = Flare.find(params[:id])
  end
  def flare_params
    params.require(:flare).permit(:title, :description, :image, :category, :location, :address, :latitude, :longitude, :start_date, :start_time, :photo, :current_user)
  end
end
