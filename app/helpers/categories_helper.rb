module CategoriesHelper
  def recent_post_of_category(number)
    Post.where('category_id = ?', params[:id]).limit(number).order('id desc')
  end
end
