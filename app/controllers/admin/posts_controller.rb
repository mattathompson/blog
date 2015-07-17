class Admin::PostsController < ApplicationController
  layout 'application'
  before_action :authenticate_user!
  def index
    @posts = Post.order(:created_at).page params[:page]
  end

  def show
    @post = Post.friendly.find params[:id]
  end


  def update
    @post = Post.friendly.find params[:id]
    @post.update_attributes post_params
    if @post.save
      redirect_to [:admin, @post]
    else
      redirect_to :back, notice: @post.errors
    end
  end

  def create
    @post = Post.new post_params
    if @post.save
      redirect_to [:admin, @post]
    else
      redirect_to :back, notice: @post.errors
    end
  end


  def new
    @post = Post.new
    @categories = Category.all
  end


  def edit
    @post = Post.friendly.find params[:id]
    @categories = Category.all
  end

  def destroy
    @post = Post.friendly.find params[:id]
    if @post.delete
      redirect_to admin_posts_path
    else
      redirect_to :back, notice: "Something went wrong."
    end
  end

  private

  def post_params
    params[:post].permit(:title, :body, :tags, :pub_date, :main_image, :draft, :sidebar, :featured, :category_id)
  end

end
