module ApplicationHelper
  def accordion_block(title, slug, parent, &block)
      content_tag(:div, :class => "accordion-group") do
        head = content_tag(:div, :class => "accordion-heading") do
          link_to(title, "#collapse_#{slug}", :class => "accordion-toggle", :"data-toggle" => "collapse", :"data-parent" => "##{parent}")
        end
        
        body = content_tag(:div, :id => "collapse_#{slug}", :class => "accordion-body collapse") do
          content_tag(:div, :class => "accordion-inner") do
            yield
          end
        end
        head + body
      end
    end
  end
