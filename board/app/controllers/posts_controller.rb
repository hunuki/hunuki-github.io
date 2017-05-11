class PostsController < ApplicationController
  def index
      @posts = Post.all
  end

  def new
  end

  def edit
      @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :body))

    @post.save
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to posts_path
  end
end
