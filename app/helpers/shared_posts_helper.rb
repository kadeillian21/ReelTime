module SharedPostsHelper
  def post_image_for(shared_post, width = "", height = "")
    @image_url = shared_post.image_url
    if @image_url == nil
      @image_shared_post = image_tag("user.jpg", alt: shared_post.description, width: width, height: height)
    else
      @image_shared_post = image_tag(shared_post.image_url, alt: shared_post.description, width: width, height: height)
    end
    return @image_shared_post
  end
end
