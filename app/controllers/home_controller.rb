class HomeController < ApplicationController
  def index
    @posts = Post.all
    @last_three = Post.limit(3).order('id desc')
    @hn_weather = view_context.weather_forecast(91888417)
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
