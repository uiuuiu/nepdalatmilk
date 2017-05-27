class Admin::CategoriesController < AdminController
  before_action :load_service

  def index
    @q = @service.condition
    @categories = @service.item_list(params[:page], @limit)
  end

  private

  def load_service
    @service = Admin::CategoriesService.new(params, nil)
  end
end