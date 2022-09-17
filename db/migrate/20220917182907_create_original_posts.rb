class CreateOriginalPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :original_posts do |t|
      t.text :body
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
