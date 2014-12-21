module HomeHelper
  def recent_cat
    Category.last(3)
  end
end
