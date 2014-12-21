class HomeController < ApplicationController
  def index
    @posts = Post.all
    @last_three = Post.limit(3).order('id desc')
  end

  def categories

  end

  def details

  end

  def search

  end

  def sample
    
  end
end
