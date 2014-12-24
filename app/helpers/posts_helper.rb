module PostsHelper
  def recent_post(number)
    Post.order('id desc').first(number)
  end

  def get_category_from_id(id)
    category = Category.where('id = ?', id)
    category.first.name
  end
end