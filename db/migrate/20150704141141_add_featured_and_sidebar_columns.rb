class AddFeaturedAndSidebarColumns < ActiveRecord::Migration
  def change
    add_column :posts, :featured, :boolean, default: false
    add_column :posts, :sidebar, :boolean, default: false
  end
end
