class StaticPagesController < ApplicationController
  before_action :find_sidebar

  layout 'public'

  def home
    @featured_posts = Post.featured
    @sidebar_posts  = Post.sidebar
  end

  def show
    @post = Post.friendly.find params[:id]
  end

  def posts
    @posts = Post.all
  end

  private

  def find_sidebar
    @sidebar_posts  = Post.sidebar
  end
end
