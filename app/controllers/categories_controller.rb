class CategoriesController < ApplicationController
  before_action :find_sidebar

  layout 'public'
  def show
    @category = Category.friendly.find params[:id]
  end

  def index
    @categories = Category.all
  end


  private

  def find_sidebar
    @sidebar_posts  = Post.sidebar
  end

end
