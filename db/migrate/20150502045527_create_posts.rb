class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.timestamp :created_at
      t.timestamp :updated_at
      t.text :body
      t.string :tags

      t.timestamps null: false
    end
  end
end
