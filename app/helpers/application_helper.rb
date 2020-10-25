module ApplicationHelper
  def handlebars(name, &block)
    content_tag(:script, id: name, type: 'text/x-handlebars-template') do
      content = capture(&block)
      content.html_safe
    end
  end
end
