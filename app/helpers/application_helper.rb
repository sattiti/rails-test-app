module ApplicationHelper
  def page_title(title='')
    static_title = ' | Hello'
    title.empty? ? static_title : "#{title}#{static_title}"
  end
end
