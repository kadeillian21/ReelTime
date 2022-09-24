class AddTitleToSharedPost < ActiveRecord::Migration[7.0]
  def change
    add_column :shared_posts, :title, :string
  end
end
