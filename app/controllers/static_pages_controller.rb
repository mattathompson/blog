class StaticPagesController < ApplicationController
  layout 'public'

  def home
    @featured_posts = Post.featured
    @sidebar_posts  = Post.sidebar
  end

  def show

  end




end
