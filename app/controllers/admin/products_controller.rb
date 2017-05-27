class Admin::ProductsController < ApplicationController
  layout "admin_application"
  before_action :load_service

  def index
    @q = @service.condition
    @products = @service.item_list
  end

  private
  def load_service
    @service = ProductsService.new(params, nil)
  end
end
