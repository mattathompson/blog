class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end


  def create
    @post = Post.new post_params
    if @post.save
      redirect_to @post
    else
      redirect_to :back
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
    params[:post].permit(:title, :body, :tags, :pub_date)
  end

end
