class ChangeUserColumnToProfileImageData < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :profile_image, :profile_image_data
  end
end
