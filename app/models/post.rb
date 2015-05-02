class Post < ActiveRecord::Base
  validates_presence_of :body, :title, :pub_date, :tags
end
