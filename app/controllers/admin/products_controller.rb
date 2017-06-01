class Admin::ProductsController < AdminController
  before_action :load_service
  before_action :load_product, only: [:edit, :update, :destroy]

  def index
    @q = @service.condition
    @products = @service.item_list(params[:page], @limit)
  end

  def edit
  end

  def update
    @product.update_attributes product_params
  end

  private
  def load_service
    @service = Admin::ProductsService.new(params, nil)
  end

  def product_params
    params.require(:product).permit Product::DEFAULT_ATTRIBUTES
  end

  def load_product
    @product = Product.find_by id: params[:id]
  end
end
