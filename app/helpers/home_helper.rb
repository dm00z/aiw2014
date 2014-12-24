module HomeHelper
  def recent_cat
    Category.limit(3).order('id desc')
  end
end
