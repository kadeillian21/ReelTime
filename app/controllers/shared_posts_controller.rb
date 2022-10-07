class SharedPostsController < ApplicationController
  before_action :set_shared_post, only: %i[ show edit update destroy ]
  before_action :set_user, only: %i[ new create edit update destroy ]

  def show
  end

  def index
    @shared_posts = SharedPost.all
  end

  def new
    @shared_post = SharedPost.new
  end

  def create
    @shared_post = shared_post_import_data(params["shared_post"][:url])
    respond_to do |format|
      if @shared_post.save
        format.html { redirect_to shared_post_url(@shared_post), notice: "Link shared!." }
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

  def shared_post_import_data(url)
    post = LinkThumbnailer.generate(url)
    title = post.title
    description = post.description
    image = post.images.first.src.to_s
    return SharedPost.new(user_id: current_user.id, title: title, image_url: image, url: url, description: description)
  end

  def set_shared_post
    @shared_post = SharedPost.find(params[:id])
  end

  def set_user
    @user = current_user.id
  end
end
