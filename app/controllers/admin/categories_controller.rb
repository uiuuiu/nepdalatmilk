class Admin::CategoriesController < AdminController
  before_action :load_service

  def index
    @q = @service.condition
    @categories = @service.item_list
  end

  private

  def load_service
    @service = CategoriesService.new(params, nil)
  end
end