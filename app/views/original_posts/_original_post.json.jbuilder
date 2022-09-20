json.extract! original_post, :id, :body, :image, :user_id, :created_at, :updated_at
json.url original_post_url(original_post, format: :json)
