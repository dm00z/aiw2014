class PostsController < ApplicationController
  def index
    @posts = Post.order('id desc').page(params[:page]).per(2)
    @latest = Post.limit(1).order(id: :desc)
  end


  def show
    @post = Post.find(params[:id])
  end

end
