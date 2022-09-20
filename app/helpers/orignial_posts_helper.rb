module OrignialPostsHelper
  def edit_original_post(original_post)
    if current_user.id == original_post.user.id
      link_to "Edit this Post", edit_original_post_path(original_post)
    end
  end

  def delete_original_post(original_post)
    if current_user.id == original_post.user.id
      button_to "Destroy this Post", original_post, method: :delete
    end
  end
end
