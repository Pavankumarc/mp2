module ApplicationHelper
def hidden_div_if(condition, attributes = {}, &block)
if condition
attributes["style"] = "display: none"
end
content_tag("div", attributes, &block)
end
end


def nav_link(link_text, link_path)
  class_name = current_page?(link_path) ? 'current' : ''

  content_tag(:li, :class => class_name) do
    link_to link_text, link_path
  end
end