class Category < ActiveRecord::Base
  has_many :posts
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

end
