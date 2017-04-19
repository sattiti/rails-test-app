module ApplicationHelper
  def page_title(title)
    title.empty? ? ' | MyApp' : "#{title} | MyApp"
  end
end
