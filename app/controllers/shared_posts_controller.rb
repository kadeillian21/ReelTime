class SharedPostsController < ApplicationController
  def show
    @shared_post = SharedPost.find_by(id: params[:id])
  end

  def index
    @shared_posts = SharedPost.all
  end

  def new
    @shared_post = SharedPost.new
  end

  def create
    post_params = post_params(params["shared_post"][:url])
    @shared_post = SharedPost.new(user_id: current_user.id, title: post_params[:title], description: post_params[:description], image_url: post_params[:image_url], url: post_params[:url])
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

  def post_params(url)
    post = LinkThumbnailer.generate(url)
    title = post.title
    description = post.description
    image = post.images.first.src.to_s
    return { title: title, image_url: image, url: url, description: description }
  end
end
