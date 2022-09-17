class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string "full_name"
      t.string "user_name"
      t.string "email"
      t.string "password_digest"
      t.text "bio"
      t.text "profile_image"
      t.string "instagram_url"
      t.string "tiktok_url"
      t.string "snapchat_url"

      t.timestamps
    end
  end
end
