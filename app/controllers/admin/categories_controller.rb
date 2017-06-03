class Admin::CategoriesController < AdminController
  before_action :load_service
  before_action :set_item, only: [:update, :destroy]

  def index
    @q = @service.condition
    @categories = @service.item_list(params[:page], @limit)
    @category = @service.new_item
  end

  def create
    @category = @service.create_item
    redirect_to :back
  end

  def update
    @item.update(@service.permit_params)
    redirect_to :back
  end

  def destroy
    @item.destroy
    redirect_to :back
  end

  private

  def set_item
    @item = Category.find(params[:id])
  end

  def load_service
    @service = Admin::AdminServices::CategoriesService.new(params, nil)
  end
end