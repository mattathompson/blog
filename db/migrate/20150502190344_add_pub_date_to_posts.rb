class AddPubDateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :pub_date, :date
  end
end
