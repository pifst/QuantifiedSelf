module MealsHelper
  def boolean_to_words(value)
    value ? (content_tag(:i, content_tag(:c, ), :class => 'icon-check', :id => "override")) : (content_tag(:i, content_tag(:c, ), :class => 'icon-check-empty', :id => "override"))
  end
  include MNE::TwitterBootstrapFormBuilder::Helper
end
