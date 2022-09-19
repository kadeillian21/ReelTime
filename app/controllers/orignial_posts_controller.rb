class OrignialPostsController < ApplicationController
  before_action :authenticate_user, except: [:edit, :create]
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /original_posts or /original_posts.json
  def index
    @original_posts = OriginalPost.all
  end

  # GET /original_posts/1 or /original_posts/1.json
  def show
  end

  # GET /original_posts/new
  def new
    @original_post = OriginalPost.new
  end

  # GET /original_posts/1/edit
  def edit
  end

  # POST /original_posts or /original_posts.json
  def create
    @original_post = OriginalPost.new(original_post_params)

    respond_to do |format|
      if @original_post.save
        format.html { redirect_to original_post_url(@original_post), notice: "original_post was successfully created." }
        format.json { render :show, status: :created, location: @original_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @original_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /original_posts/1 or /original_posts/1.json
  def update
    respond_to do |format|
      if @original_post.update(original_post_params)
        format.html { redirect_to original_post_url(@original_post), notice: "original_post was successfully updated." }
        format.json { render :show, status: :ok, location: @original_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @original_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /original_posts/1 or /original_posts/1.json
  def destroy
    @original_post.destroy

    respond_to do |format|
      format.html { redirect_to original_posts_url, notice: "Original Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def original_post_params
    params.require(:original_post).permit(:full_name, :original_post_name, :email, :password, :password_confirmation, :bio, :profile_image, :instagram, :tiktok_url, :snapchat_url)
  end
end
end
