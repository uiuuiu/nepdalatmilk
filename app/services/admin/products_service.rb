class Admin::ProductsService < BaseService
  def condition
    @q = Product.ransack(params[:q])
  end

  def item_list page, limit
    @q.result.page(page).per(limit)
  end
end
