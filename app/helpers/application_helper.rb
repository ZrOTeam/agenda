module ApplicationHelper

  def body_class
    "#{controller_name}_#{action_name}"
  end

  def title(page_title, show_title = true )
    content_for(:title) { h(page_title.to_s) }
    @show_title = show_title
  end

  def raw_title
    tag_title = ""

    tag_title += "#{content_for(:title)} | #{company_name} - RAP" if content_for?(:title)
    tag_title
  end

  def show_title?
    @show_title
  end

  def flash_class(level)
    case level
      when "notice" then "alert-info"
      when "success" then "alert-success"
      when "error" then "alert-danger"
      when "alert" then "alert-danger"
    end
  end
  
end
