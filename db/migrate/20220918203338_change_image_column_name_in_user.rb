class ChangeImageColumnNameInUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :profile_image_data, :image_data
  end
end
