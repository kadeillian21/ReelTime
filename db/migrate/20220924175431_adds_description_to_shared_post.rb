class AddsDescriptionToSharedPost < ActiveRecord::Migration[7.0]
  def change
    add_column :shared_posts, :description, :string
  end
end
