class Admin::CategoriesService < BaseService

  def condition
    @q = Category.ransack(params[:q])
    @q
  end

  def item_list page, limit
    @q.result.page(page).per(limit)
  end
end
