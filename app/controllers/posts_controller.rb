class PostsController < ApplicationController
  def index

    @latest = Post.limit(1).order('id desc')

    if params[:search]
      @posts = Post.search(params[:search]).order('created_at desc').page(params[:page]).per(5)
    else
      @posts = Post.order('id desc').page(params[:page]).per(3)
    end
  end

  def show
    @post = Post.find(params[:id])
  end

end
