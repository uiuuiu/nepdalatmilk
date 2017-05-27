module ApplicationHelper

  def select_limit_tag(limit = nil)
    limit ||= @limit
    content_tag(:span, "Hiển thị ") + select_tag(
      :limit,
      options_for_select([25, 50, 100, 300].collect{ |u| [u, u] }, limit),
      class: "form-control input-sm"
    ) + content_tag(:span, " kết quả")
  end
end
