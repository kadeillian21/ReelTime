class SharedPostsController < ApplicationController
  def show
  end

  def index
  end

  def new
  end

  def create
    @shared_post = SharedPost.new(post_params("https://www.cnet.com/science/space/stunning-nasa-james-webb-telescope-image-reveals-neptunes-delicate-rings/"))
    respond_to do |format|
      if @shared_post.save
        format.html { redirect_to post_url(@shared_post), notice: "Link shared!." }
        format.json { render :show, status: :created, location: @shared_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shared_post.errors, status: :unprocessable_entity }
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  # def shared_post_params
  #   params.require(:shared_post).permit(:url, :title)
  # end
end
