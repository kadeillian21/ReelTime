class SharedPost < ApplicationRecord
  belongs_to :user

  def post_params(url)
    post = LinkThumbnailer.generate(url)
    title = post.title
    description = post.description
    image = post.images.first.src.to_s
    return { title: title, image_url: image, url: url }
  end
end
