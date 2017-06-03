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
    @product.update @service.permit_params
    redirect_to :back
  end

  private
  def load_service
    @service = Admin::AdminServices::ProductsService.new(params, nil)
  end

  def load_product
    @product = Product.find_by id: params[:id]
  end
end
