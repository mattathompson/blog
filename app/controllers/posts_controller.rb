class PostsController < ApplicationController
  layout 'application'
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end


  def update
    @post = Post.find params[:id]
    @post.update_attributes post_params
    if @post.save
      redirect_to @post
    else
      redirect_to new_post_path, notice: @post.errors
    end
  end

  def create
    @post = Post.new post_params
    if @post.save
      redirect_to @post
    else
      redirect_to new_post_path, notice: @post.errors
    end
  end


  def new
    @post = Post.new
  end


  def edit
    @post = Post.find params[:id]
  end

  private

  def post_params
    params[:post].permit(:title, :body, :tags, :pub_date, :main_image)
  end

end
