class Admin::AdminServices::ProductsService < BaseService

  def condition
    @q = Product.ransack(params[:q])
  end

  def item_list page, limit
    @q.result.page(page).per(limit)
  end

  def permit_params
    params.require(:product).permit Product::DEFAULT_ATTRIBUTES
  end
end
