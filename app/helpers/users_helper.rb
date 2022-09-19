module UsersHelper
  def image_for(user, width = "", height = "")
    @image = user.image
    if @image == nil
      @image_user = image_tag("user.jpg", alt: user.full_name, width: width, height: height)
    else
      @image_user = image_tag(user.image_url, alt: user.full_name, width: width, height: height)
    end
    return @image_user
  end

  def destroy_user(user)
    if user == current_user
      button_to "Destroy this user", user, method: :delete
    end
  end

  def edit_user(user)
    if user == current_user
      link_to "Edit this user", edit_user_path(user)
    end
  end
end
