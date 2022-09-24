class SharedPostsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @shared_post = SharedPost.new
  end

  def create
    # post_params = post_params(:url)
    # @shared_post = SharedPost.new(url: post_params[:url], image_url: post_params[:image_url], title: post_params[:title], user_id: current_user.id)
    @shared_post = SharedPost.new.post_params(params["shared_post"][:url])
    respond_to do |format|
      if @shared_post.save
        format.html { redirect_to users_url(@shared_post), notice: "Link shared!." }
        format.json { render :show, status: :created, location: @shared_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shared_post.errors, status: :unprocessable_entity }
      end
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
