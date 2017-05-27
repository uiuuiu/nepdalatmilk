class Admin::ProductsService < BaseService
  def condition
    @q = Product.sansack params[:q]
  end

  def item_list
    @q.result
  end
end
