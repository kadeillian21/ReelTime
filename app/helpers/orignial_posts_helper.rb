module OrignialPostsHelper

  # Helper name is broken

  def original_post_image_for(original_post, width = "", height = "")
    @image = original_post.image
    if @image == nil
      @image_original_post = image_tag("user.jpg", alt: "#{current_user.full_name}'s post #{original_post.id}", width: width, height: height)
    else
      @image_original_post = image_tag(original_post.image_url, alt: "#{current_user.full_name}'s post #{original_post.id}", width: width, height: height)
    end
    return @image_original_post
  end

  def edit_original_post(original_post)
    if current_user&.id == original_post.user.id
      link_to "Edit this Post", edit_original_post_path(original_post)
    end
  end

  def delete_original_post(original_post)
    if current_user&.id == original_post.user.id
      button_to "Destroy this Post", original_post, method: :delete
    end
  end
end
