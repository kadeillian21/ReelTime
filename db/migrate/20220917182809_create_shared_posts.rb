class CreateSharedPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :shared_posts do |t|
      t.string :url
      t.string :image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
