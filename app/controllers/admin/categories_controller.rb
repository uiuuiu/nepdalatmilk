class Admin::CategoriesController < AdminController
  before_action :load_service

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

  end

  private

  def load_service
    @service = Admin::CategoriesService.new(params, nil)
  end
end