module EnergiesHelper
  def sortable(column, font_icon, title = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    font_icon = font_icon + ' icon-large'



    content_tag(:center, (link_to content_tag(:i, content_tag(:c, ), :class => font_icon, :id => "override"), :sort => column, :direction => direction))
  end
end