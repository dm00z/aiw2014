class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new

    if @post.save
      redirect_to posts_path, notice: "Post #{title} is created."
    else
      render 'new'
    end
  end

  def destroy
    @post =  Post.find(params[:id])

    @post.destroy
    redirect_to posts_path, notice: "Post #{title} is deleted."
  end
end
