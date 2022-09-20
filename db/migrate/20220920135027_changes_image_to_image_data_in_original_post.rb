class ChangesImageToImageDataInOriginalPost < ActiveRecord::Migration[7.0]
  def change
    rename_column :original_posts, :image, :image_data
  end
end
