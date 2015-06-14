class AddMainImageToPosts < ActiveRecord::Migration
  def up
    add_attachment :posts, :main_image
  end

  def down
    remove_attachment :posts, :main_image
  end
end
