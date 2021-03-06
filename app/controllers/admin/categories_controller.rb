class Admin::CategoriesController < ApplicationController
skip_before_filter :track_action
  def show
    @category = Category.friendly.find params[:id]
  end


  def index
    @categories = Category.all
  end

  def edit
    @category = Category.friendly.find params[:id]
  end

  def new
    @category = Category.new
  end

  def update
    @category = Category.friendly.find params[:id]
    if @category.update_attributes category_params
      redirect_to admin_category_path(@category)
    else
      redirect_to :back, notice: "Sorry love, something went wrong."
    end
  end

  def create
    @category = Category.new category_params
    if @category.save
      redirect_to admin_category_path(@category)
    else
      redirect_to :back, notice: "Sorry love, Something went wrong."
    end
  end

  def destroy
    @category = Category.friendly.find params[:id]
  end

  private

  def category_params
    params[:category].permit(:name, :description)
  end
end
