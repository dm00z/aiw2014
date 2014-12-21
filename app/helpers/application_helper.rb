module ApplicationHelper
  def li(content, hash = {})
    content_tag(:li, content, :class => hash[:class])
  end

  def div(content, hash = {})
    content_tag(:div, content, :class => hash[:class])
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = 'Vietnam Beauty Spots'
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
