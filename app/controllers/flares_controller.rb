class FlaresController < ApplicationController
  before_action :set_flare, only:[:show, :edit, :update, :destroy]
  def index
    @q = Flare.search(params[:q])
    @flares = @q.result(distinct: true)
    @comments = @flare.comments
  end

  def new
    @flare = Flare.new
    @q = Flare.search(params[:q])
    @flares = @q.result(distinct: true)
  end

  def show
    @flare = Flare.find(params[:id])
    # @user_who_commented = @current_user
    # @comment = Comment.build_from( @flare, @user_who_commented.id, "Hey guys this is my comment!" )
    # @comment.move_to_child_of(the_desired_parent_comment)
    # @all_comments = @article.comment_threads

    @comments = @flare.comments
    @q = Flare.search(params[:q])
    @flares = @q.result(distinct: true)
  
  end

  def create
    @q = Flare.search(params[:q])
    @flares = @q.result(distinct: true)

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
    respond_to do |format|
      if @flare.update(flare_params)
        format.html { redirect_to @flare, notice: 'Flare was successfully updated.' }
        format.json { render :show, status: :ok, post: @flare }
      else
        format.html { render :edit }
        format.json { render json: @flare.errors, status: :unprocessable_entity }
      end
    end
    @q = Flare.search(params[:q])
    @flares = @q.result(distinct: true)
  end

  def destroy
    @flare = Flare.find(params[:id])
    if @flare.destroy
      redirect_to flares_path
    else
      redirect_to :back
    end
  end

  private
      def set_flare
        @flare = Flare.find(params[:id])
      end
      def flare_params
          params.require(:flare).permit(:title, :description, :image, :category, :location, :date, :time, :photo)
      end
end
