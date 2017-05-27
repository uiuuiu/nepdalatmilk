class Admin::CategoriesService < BaseService

  def condition
    @q = Category.ransack(params[:q])
    @q
  end

  def item_list
    @q.result
  end
end
