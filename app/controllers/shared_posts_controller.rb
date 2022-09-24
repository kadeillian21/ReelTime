class SharedPostsController < ApplicationController
  def show
  end

  def index
  end

  def new
  end

  def create
    @post = SharedPost.new(post_params(url))
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
