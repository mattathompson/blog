class StaticPagesController < ApplicationController
  layout 'public'

  def home
    @featured_posts = Post.featured
  end




end
