module PostsHelper
  def recent_post(number)
    Post.last(number)
  end
end
