module ApplicationHelper

  def title(page_title)
    content_for(:title, page_title.to_s)
    return content_tag(:h1, page_title)
  end
end
