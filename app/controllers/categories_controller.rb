class CategoriesController < ApplicationController

  def show

  end


  def index

  end


  def new
    @category = Category.new
  end


  def create

  end


  def destroy

  end


  def edit

  end


  def update

  end

  private

  def categories_params
    params[:category].permit(:name, :description)
  end

end
