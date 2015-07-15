class CategoriesController < ApplicationController

  layout 'public'
  def show
    @category = Category.friendly.find params[:id]
  end

  def index
    @categories = Category.all
  end


  private

end
