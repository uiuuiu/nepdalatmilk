module ApplicationHelper

  def select_limit_tag(limit = nil)
    limit ||= @limit
    content_tag(:span, "Hiển thị ") + select_tag(
      :limit,
      options_for_select([25, 50, 100, 300].collect{ |u| [u, u] }, limit),
      class: "form-control input-sm admin-select-limit"
    ) + content_tag(:span, " kết quả")
  end

  def set_sorting_class name
    return "sorting" if params[:q].try(:[], :s).blank?
    sorting_attributes = params[:q][:s].split(" ")
    if sorting_attributes.include?(name.to_s)
      case sorting_attributes[1]
      when "asc"
        "sorting_asc"
      when "desc"
        "sorting_desc"
      end
    else
      "sorting"
    end
  end
end
