class AllPostsController < ApplicationController
  before_action :set_original_post, only: %i[ show edit update destroy ]
  before_action :set_shared_post, only: %i[ show edit update destroy ]
  before_action :set_user, only: %i[ new create edit update destroy ]

  def index
    @original_posts = OriginalPosts.all
    @shared_posts = SharedPosts.all
  end

  private

  def set_original_post
    @original_post = OriginalPost.find(params[:id])
  end

  def set_shared_post
    @shared_post = SharedPost.find(params[:id])
  end

  def set_user
    @user = current_user.id
  end
end
